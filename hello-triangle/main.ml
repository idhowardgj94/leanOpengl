open Format
open Bigarray
open VertArray
open VBO
open GL

let width = 800
let height = 600

let vertexShaderSource =
  "#version 330 core\n" ^ "layout (location = 0) in vec3 aPos;\n"
  ^ "void main()\n" ^ "{\n"
  ^ "   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n" ^ "}\n"

let fragmentShaderSource =
  "#version 330 core\n" ^ "out vec4 FragColor;\n" ^ "void main()\n" ^ "{\n"
  ^ "   FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);\n" ^ "}\n"

let read_test_bin () =
  let ic =
    open_in_bin "/home/howard/workspace/playboy/resource/RGB888_red_720x480.bin"
  in
  let len = in_channel_length ic in
  let buf = really_input_string ic len in
  buf

let arr = [| -0.5; -0.5; 0.0; 0.5; -0.5; 0.0; 0.0; 0.5; 0.0 |]
let _ = 
  (* Initialize the library *)
  GLFW.init ();

  GLFW.windowHint GLFW.ContextVersionMajor 3;
  GLFW.windowHint GLFW.ContextVersionMinor 3;
  GLFW.windowHint GLFW.OpenGLProfile GLFW.CoreProfile;

  (* GLFW.windowHint GLFW.OpenGLForwardCompat false; *)
  at_exit GLFW.terminate;

  (* Create a windowed mode window and its OpenGL context *)
  let window = GLFW.createWindow ~width ~height ~title:"LearnOpenGL" () in
  (* Make the window's context current *)
  GLFW.makeContextCurrent (Some window);

  let _ =
    GLFW.setFramebufferSizeCallback window
      (Some (fun win w h -> glViewport 0 0 w h))
  in

  glViewport 0 0 width height;
   (* build and compile shader programs *)
  (* vertex shader *)
  let vertexShader = glCreateShader GL_VERTEX_SHADER in
  glShaderSource vertexShader vertexShaderSource;
  glCompileShader vertexShader;
  let res = glGetShaderInfoLog vertexShader in
  if res <> ""  then printf "%s\n" res; 

  (* fragment shader *)
  let fragmentShader = glCreateShader GL_FRAGMENT_SHADER in
  glShaderSource fragmentShader fragmentShaderSource;
  glCompileShader fragmentShader;
  let res = glGetShaderInfoLog fragmentShader in
  if res <> "" then printf "%s\n" res; 

  (* link program *)
  let shaderProgram = glCreateProgram () in
  glAttachShader shaderProgram vertexShader;
  glAttachShader shaderProgram fragmentShader;
  glLinkProgram shaderProgram;

  let res = glGetProgramInfoLog shaderProgram in
  if res <> "" then printf "%s\n" res; 
  glDeleteShader vertexShader;
  glDeleteShader fragmentShader;

  (* VAO VBO *)
  let vao = glGenVertexArray () in
  let vbo = glGenBuffer () in
  (* bind the Vertex Array Object first, then bind and set vertex buffer(s), and then configure vertex attributes(s). *)
  glBindVertexArray vao;
  
  let ba = Array1.of_array Float32 C_layout arr in
  glBindBuffer GL_ARRAY_BUFFER vbo;
  glBufferData GL_ARRAY_BUFFER (ba_sizeof ba) ba GL_STATIC_DRAW; 
  
  glVertexAttribPointer0 ~index:0 ~size:3 ~data_type:GL_FLOAT ~normalized:false ~stride:(3 * kind_size_in_bytes Float32);
  glEnableVertexAttribArray 0;

  let err = glGetError () in
    let err_str = match err with
    | GL_NO_ERROR -> "no error"
    | GL_INVALID_ENUM -> "invalid enum"
    | GL_INVALID_VALUE -> "invalid value"
    | GL_INVALID_OPERATION -> "invalid operation"
    | GL_STACK_OVERFLOW -> "stack overflow"
    | GL_STACK_UNDERFLOW -> "stack underflow"
    | GL_OUT_OF_MEMORY -> "out of memory"
    | GL_TABLE_TOO_LARGE -> "table too large" in
    printf "err: %s\n" err_str;

    
  (* Loop until the user closes the window *)
  while not (GLFW.windowShouldClose window) do
    (* Render here *)
    glClearColor 0.2 0.3 0.3 1.0;
    glClear [ GL_COLOR_BUFFER_BIT ];

    glUseProgram shaderProgram;
    glDrawArrays GL_TRIANGLES 0 3;
   
    (* Unix.sleepf 0.3; *)
    (* Swap front and back buffers *)
    GLFW.swapBuffers window;
    (* Poll for and process events *)
    GLFW.pollEvents ()
  done;

  glDeleteVertexArray 1;
  glDeleteBuffer vbo;
  glDeleteProgram shaderProgram
