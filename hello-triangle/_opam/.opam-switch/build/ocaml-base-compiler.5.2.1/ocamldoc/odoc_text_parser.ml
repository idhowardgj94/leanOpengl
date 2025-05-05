type token =
  | END
  | Title of (
# 29 "ocamldoc/odoc_text_parser.mly"
        int * string option
# 7 "ocamldoc/odoc_text_parser.ml"
)
  | BOLD
  | EMP
  | CENTER
  | LEFT
  | RIGHT
  | ITALIC
  | CUSTOM of (
# 36 "ocamldoc/odoc_text_parser.mly"
        string
# 18 "ocamldoc/odoc_text_parser.ml"
)
  | LIST
  | ENUM
  | ITEM
  | LINK
  | CODE
  | END_CODE
  | CODE_PRE
  | END_CODE_PRE
  | VERB
  | END_VERB
  | LATEX
  | Target of (
# 48 "ocamldoc/odoc_text_parser.mly"
        string
# 34 "ocamldoc/odoc_text_parser.ml"
)
  | END_TARGET
  | LBRACE
  | ELE_REF
  | VAL_REF
  | TYP_REF
  | EXT_REF
  | EXC_REF
  | MOD_REF
  | MODT_REF
  | CLA_REF
  | CLT_REF
  | ATT_REF
  | MET_REF
  | SEC_REF
  | RECF_REF
  | CONST_REF
  | MOD_LIST_REF
  | INDEX_LIST
  | SUPERSCRIPT
  | SUBSCRIPT
  | BEGIN_SHORTCUT_LIST_ITEM
  | BEGIN_SHORTCUT_ENUM_ITEM
  | SHORTCUT_LIST_ITEM
  | SHORTCUT_ENUM_ITEM
  | END_SHORTCUT_LIST
  | BLANK_LINE
  | EOF
  | Char of (
# 81 "ocamldoc/odoc_text_parser.mly"
        string
# 66 "ocamldoc/odoc_text_parser.ml"
)

open Parsing
let _ = parse_error;;
# 2 "ocamldoc/odoc_text_parser.mly"
(**************************************************************************)
(*                                                                        *)
(*                                 OCaml                                  *)
(*                                                                        *)
(*             Maxence Guesdon, projet Cristal, INRIA Rocquencourt        *)
(*                                                                        *)
(*   Copyright 2001 Institut National de Recherche en Informatique et     *)
(*     en Automatique.                                                    *)
(*                                                                        *)
(*   All rights reserved.  This file is distributed under the terms of    *)
(*   the GNU Lesser General Public License version 2.1, with the          *)
(*   special exception on linking described in the file LICENSE.          *)
(*                                                                        *)
(**************************************************************************)

open Odoc_types

let blank = "[ \010\013\009\012]"

let remove_beginning_blanks s =
  Str.global_replace (Str.regexp ("^"^blank^"+")) "" s

let remove_trailing_blanks s =
  Str.global_replace (Str.regexp (blank^"+$")) "" s
# 96 "ocamldoc/odoc_text_parser.ml"
let yytransl_const = [|
  257 (* END *);
  259 (* BOLD *);
  260 (* EMP *);
  261 (* CENTER *);
  262 (* LEFT *);
  263 (* RIGHT *);
  264 (* ITALIC *);
  266 (* LIST *);
  267 (* ENUM *);
  268 (* ITEM *);
  269 (* LINK *);
  270 (* CODE *);
  271 (* END_CODE *);
  272 (* CODE_PRE *);
  273 (* END_CODE_PRE *);
  274 (* VERB *);
  275 (* END_VERB *);
  276 (* LATEX *);
  278 (* END_TARGET *);
  279 (* LBRACE *);
  280 (* ELE_REF *);
  281 (* VAL_REF *);
  282 (* TYP_REF *);
  283 (* EXT_REF *);
  284 (* EXC_REF *);
  285 (* MOD_REF *);
  286 (* MODT_REF *);
  287 (* CLA_REF *);
  288 (* CLT_REF *);
  289 (* ATT_REF *);
  290 (* MET_REF *);
  291 (* SEC_REF *);
  292 (* RECF_REF *);
  293 (* CONST_REF *);
  294 (* MOD_LIST_REF *);
  295 (* INDEX_LIST *);
  296 (* SUPERSCRIPT *);
  297 (* SUBSCRIPT *);
  298 (* BEGIN_SHORTCUT_LIST_ITEM *);
  299 (* BEGIN_SHORTCUT_ENUM_ITEM *);
  300 (* SHORTCUT_LIST_ITEM *);
  301 (* SHORTCUT_ENUM_ITEM *);
  302 (* END_SHORTCUT_LIST *);
  303 (* BLANK_LINE *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  258 (* Title *);
  265 (* CUSTOM *);
  277 (* Target *);
  304 (* Char *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\003\000\004\000\004\000\002\000\002\000\006\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\008\000\008\000\008\000\008\000\012\000\010\000\
\010\000\013\000\011\000\011\000\014\000\009\000\009\000\000\000\
\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\002\000\001\000\002\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\006\000\003\000\001\000\
\003\000\003\000\003\000\005\000\001\000\003\000\003\000\003\000\
\003\000\001\000\001\000\002\000\001\000\002\000\003\000\002\000\
\001\000\002\000\002\000\001\000\002\000\001\000\002\000\002\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\009\000\010\000\011\000\012\000\
\013\000\014\000\015\000\016\000\017\000\018\000\019\000\020\000\
\021\000\022\000\000\000\040\000\000\000\000\000\000\000\000\000\
\045\000\002\000\000\000\064\000\000\000\003\000\000\000\000\000\
\050\000\065\000\008\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\063\000\
\001\000\005\000\000\000\007\000\023\000\024\000\027\000\030\000\
\031\000\032\000\025\000\026\000\000\000\033\000\052\000\054\000\
\034\000\000\000\035\000\036\000\041\000\042\000\043\000\000\000\
\039\000\028\000\029\000\000\000\056\000\046\000\047\000\000\000\
\059\000\048\000\049\000\037\000\055\000\000\000\000\000\058\000\
\061\000\044\000\000\000\038\000"

let yydgoto = "\003\000\
\044\000\050\000\076\000\046\000\047\000\052\000\048\000\062\000\
\049\000\077\000\079\000\064\000\109\000\113\000"

let yysindex = "\022\000\
\001\000\096\255\000\000\096\255\096\255\096\255\096\255\096\255\
\096\255\096\255\096\255\000\255\000\255\210\254\210\254\210\254\
\210\254\210\254\210\254\052\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\210\254\000\000\096\255\096\255\096\255\096\255\
\000\000\000\000\210\254\000\000\014\000\000\000\096\255\210\254\
\000\000\000\000\000\000\096\255\024\255\025\255\026\255\027\255\
\028\255\029\255\030\255\031\255\096\255\032\255\000\255\000\255\
\033\255\034\255\035\255\023\255\022\255\020\255\021\255\210\254\
\043\255\044\255\046\255\012\255\052\000\013\255\053\000\000\000\
\000\000\000\000\056\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\058\255\000\000\000\000\000\000\
\000\000\096\255\000\000\000\000\000\000\000\000\000\000\063\255\
\000\000\000\000\000\000\096\255\000\000\000\000\000\000\096\255\
\000\000\000\000\000\000\000\000\000\000\064\255\096\255\000\000\
\000\000\000\000\067\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\049\000\000\000\000\000\000\000\096\000\000\000\
\000\000\000\000\000\000\069\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\069\255\070\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\054\000\000\000\055\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\020\000\255\255\026\000\011\000\000\000\070\000\254\255\
\003\000\222\255\235\255\000\000\000\000\000\000"

let yytablesize = 398
let yytable = "\045\000\
\042\000\043\000\053\000\054\000\055\000\056\000\057\000\058\000\
\059\000\060\000\065\000\061\000\051\000\081\000\063\000\063\000\
\066\000\067\000\068\000\069\000\070\000\071\000\001\000\002\000\
\085\000\086\000\087\000\088\000\089\000\090\000\091\000\092\000\
\094\000\097\000\098\000\074\000\075\000\073\000\078\000\100\000\
\101\000\102\000\103\000\105\000\106\000\080\000\107\000\043\000\
\062\000\099\000\083\000\111\000\115\000\057\000\060\000\108\000\
\116\000\112\000\117\000\093\000\095\000\096\000\051\000\119\000\
\122\000\063\000\063\000\124\000\006\000\051\000\053\000\084\000\
\082\000\120\000\104\000\021\000\022\000\023\000\024\000\025\000\
\026\000\027\000\028\000\029\000\030\000\031\000\032\000\033\000\
\034\000\072\000\121\000\000\000\000\000\000\000\000\000\004\000\
\118\000\004\000\005\000\006\000\007\000\008\000\009\000\010\000\
\011\000\012\000\013\000\000\000\014\000\015\000\078\000\016\000\
\000\000\017\000\000\000\018\000\019\000\123\000\020\000\021\000\
\022\000\023\000\024\000\025\000\026\000\027\000\028\000\029\000\
\030\000\031\000\032\000\033\000\034\000\035\000\036\000\037\000\
\038\000\039\000\040\000\000\000\000\000\000\000\041\000\043\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\004\000\005\000\006\000\007\000\008\000\009\000\
\010\000\011\000\012\000\013\000\000\000\014\000\015\000\000\000\
\016\000\000\000\017\000\000\000\018\000\019\000\000\000\020\000\
\021\000\022\000\023\000\024\000\025\000\026\000\027\000\028\000\
\029\000\030\000\031\000\032\000\033\000\034\000\035\000\036\000\
\037\000\038\000\039\000\040\000\000\000\000\000\000\000\041\000\
\043\000\062\000\062\000\062\000\062\000\062\000\062\000\062\000\
\062\000\062\000\062\000\062\000\062\000\062\000\062\000\062\000\
\062\000\062\000\062\000\062\000\062\000\062\000\062\000\062\000\
\062\000\062\000\062\000\062\000\062\000\062\000\062\000\062\000\
\062\000\062\000\062\000\062\000\062\000\062\000\062\000\062\000\
\062\000\062\000\062\000\062\000\062\000\062\000\062\000\062\000\
\004\000\110\000\114\000\057\000\060\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\004\000\004\000\004\000"

let yycheck = "\001\000\
\000\000\048\001\004\000\005\000\006\000\007\000\008\000\009\000\
\010\000\011\000\013\000\012\001\002\000\000\000\012\000\013\000\
\014\000\015\000\016\000\017\000\018\000\019\000\001\000\002\000\
\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\
\001\001\001\001\001\001\037\000\038\000\035\000\040\000\017\001\
\019\001\022\001\022\001\001\001\001\001\043\000\001\001\048\001\
\000\000\015\001\048\000\000\000\000\000\000\000\000\000\044\001\
\001\001\045\001\001\001\061\000\063\000\064\000\052\000\001\001\
\001\001\063\000\064\000\001\001\000\000\001\001\001\001\052\000\
\047\000\108\000\072\000\024\001\025\001\026\001\027\001\028\001\
\029\001\030\001\031\001\032\001\033\001\034\001\035\001\036\001\
\037\001\020\000\112\000\255\255\255\255\255\255\255\255\000\000\
\098\000\002\001\003\001\004\001\005\001\006\001\007\001\008\001\
\009\001\010\001\011\001\255\255\013\001\014\001\112\000\016\001\
\255\255\018\001\255\255\020\001\021\001\119\000\023\001\024\001\
\025\001\026\001\027\001\028\001\029\001\030\001\031\001\032\001\
\033\001\034\001\035\001\036\001\037\001\038\001\039\001\040\001\
\041\001\042\001\043\001\255\255\255\255\255\255\047\001\048\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\255\255\013\001\014\001\255\255\
\016\001\255\255\018\001\255\255\020\001\021\001\255\255\023\001\
\024\001\025\001\026\001\027\001\028\001\029\001\030\001\031\001\
\032\001\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\040\001\041\001\042\001\043\001\255\255\255\255\255\255\047\001\
\048\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\026\001\027\001\028\001\029\001\030\001\031\001\
\032\001\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\040\001\041\001\042\001\043\001\044\001\045\001\046\001\047\001\
\001\001\046\001\046\001\046\001\046\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\044\001\045\001\046\001"

let yynames_const = "\
  END\000\
  BOLD\000\
  EMP\000\
  CENTER\000\
  LEFT\000\
  RIGHT\000\
  ITALIC\000\
  LIST\000\
  ENUM\000\
  ITEM\000\
  LINK\000\
  CODE\000\
  END_CODE\000\
  CODE_PRE\000\
  END_CODE_PRE\000\
  VERB\000\
  END_VERB\000\
  LATEX\000\
  END_TARGET\000\
  LBRACE\000\
  ELE_REF\000\
  VAL_REF\000\
  TYP_REF\000\
  EXT_REF\000\
  EXC_REF\000\
  MOD_REF\000\
  MODT_REF\000\
  CLA_REF\000\
  CLT_REF\000\
  ATT_REF\000\
  MET_REF\000\
  SEC_REF\000\
  RECF_REF\000\
  CONST_REF\000\
  MOD_LIST_REF\000\
  INDEX_LIST\000\
  SUPERSCRIPT\000\
  SUBSCRIPT\000\
  BEGIN_SHORTCUT_LIST_ITEM\000\
  BEGIN_SHORTCUT_ENUM_ITEM\000\
  SHORTCUT_LIST_ITEM\000\
  SHORTCUT_ENUM_ITEM\000\
  END_SHORTCUT_LIST\000\
  BLANK_LINE\000\
  EOF\000\
  "

let yynames_block = "\
  Title\000\
  CUSTOM\000\
  Target\000\
  Char\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 93 "ocamldoc/odoc_text_parser.mly"
           ( _1 )
# 403 "ocamldoc/odoc_text_parser.ml"
               : Odoc_types.text))
; (fun __caml_parser_env ->
    Obj.repr(
# 94 "ocamldoc/odoc_text_parser.mly"
      ( [Raw ""] )
# 409 "ocamldoc/odoc_text_parser.ml"
               : Odoc_types.text))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'text_element_list) in
    Obj.repr(
# 98 "ocamldoc/odoc_text_parser.mly"
                    ( _1 )
# 416 "ocamldoc/odoc_text_parser.ml"
               : 'text))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'text_element) in
    Obj.repr(
# 102 "ocamldoc/odoc_text_parser.mly"
               ( [ _1 ] )
# 423 "ocamldoc/odoc_text_parser.ml"
               : 'text_element_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'text_element) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'text_element_list) in
    Obj.repr(
# 103 "ocamldoc/odoc_text_parser.mly"
                                 ( _1 :: _2 )
# 431 "ocamldoc/odoc_text_parser.ml"
               : 'text_element_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'located_element) in
    Obj.repr(
# 107 "ocamldoc/odoc_text_parser.mly"
                  ( [ _1 ] )
# 438 "ocamldoc/odoc_text_parser.ml"
               : (int * int * Odoc_types.text_element) list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'located_element) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : (int * int * Odoc_types.text_element) list) in
    Obj.repr(
# 108 "ocamldoc/odoc_text_parser.mly"
                                       ( _1 :: _2 )
# 446 "ocamldoc/odoc_text_parser.ml"
               : (int * int * Odoc_types.text_element) list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'text_element) in
    Obj.repr(
# 112 "ocamldoc/odoc_text_parser.mly"
               ( Parsing.symbol_start (), Parsing.symbol_end (), _1)
# 453 "ocamldoc/odoc_text_parser.ml"
               : 'located_element))
; (fun __caml_parser_env ->
    Obj.repr(
# 117 "ocamldoc/odoc_text_parser.mly"
          ( None )
# 459 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 118 "ocamldoc/odoc_text_parser.mly"
          ( Some RK_value )
# 465 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 119 "ocamldoc/odoc_text_parser.mly"
          ( Some RK_type )
# 471 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 120 "ocamldoc/odoc_text_parser.mly"
          ( Some RK_extension )
# 477 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 121 "ocamldoc/odoc_text_parser.mly"
          ( Some RK_exception )
# 483 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 122 "ocamldoc/odoc_text_parser.mly"
          ( Some RK_module )
# 489 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 123 "ocamldoc/odoc_text_parser.mly"
           ( Some RK_module_type )
# 495 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 124 "ocamldoc/odoc_text_parser.mly"
          ( Some RK_class )
# 501 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 125 "ocamldoc/odoc_text_parser.mly"
          ( Some RK_class_type )
# 507 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 126 "ocamldoc/odoc_text_parser.mly"
          ( Some RK_attribute )
# 513 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 127 "ocamldoc/odoc_text_parser.mly"
          ( Some RK_method )
# 519 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 128 "ocamldoc/odoc_text_parser.mly"
          ( Some (RK_section []))
# 525 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 129 "ocamldoc/odoc_text_parser.mly"
           ( Some RK_recfield )
# 531 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    Obj.repr(
# 130 "ocamldoc/odoc_text_parser.mly"
            ( Some RK_const )
# 537 "ocamldoc/odoc_text_parser.ml"
               : 'ele_ref_kind))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int * string option) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 134 "ocamldoc/odoc_text_parser.mly"
                 ( let n, l_opt = _1 in Title (n, l_opt, _2) )
# 545 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 135 "ocamldoc/odoc_text_parser.mly"
                ( Bold _2 )
# 552 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 136 "ocamldoc/odoc_text_parser.mly"
                  ( Italic _2 )
# 559 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 137 "ocamldoc/odoc_text_parser.mly"
                  ( Custom (_1, _2) )
# 567 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 138 "ocamldoc/odoc_text_parser.mly"
               ( Emphasize _2 )
# 574 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 139 "ocamldoc/odoc_text_parser.mly"
                       ( Superscript _2 )
# 581 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 140 "ocamldoc/odoc_text_parser.mly"
                     ( Subscript _2 )
# 588 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 141 "ocamldoc/odoc_text_parser.mly"
                  ( Center _2 )
# 595 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 142 "ocamldoc/odoc_text_parser.mly"
                ( Left _2 )
# 602 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 143 "ocamldoc/odoc_text_parser.mly"
                 ( Right _2 )
# 609 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'list) in
    Obj.repr(
# 144 "ocamldoc/odoc_text_parser.mly"
                ( List _2 )
# 616 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'list) in
    Obj.repr(
# 145 "ocamldoc/odoc_text_parser.mly"
                ( Enum _2 )
# 623 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'string) in
    Obj.repr(
# 146 "ocamldoc/odoc_text_parser.mly"
                       ( Code _2 )
# 630 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'string) in
    Obj.repr(
# 147 "ocamldoc/odoc_text_parser.mly"
                               ( CodePre _2 )
# 637 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ele_ref_kind) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'string) in
    Obj.repr(
# 148 "ocamldoc/odoc_text_parser.mly"
                           (
      let s2 = remove_beginning_blanks _2 in
      let s3 = remove_trailing_blanks s2 in
      Ref (s3, _1, None)
     )
# 649 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'ele_ref_kind) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 153 "ocamldoc/odoc_text_parser.mly"
                                          (
      let s2 = remove_beginning_blanks _3 in
      let s3 = remove_trailing_blanks s2 in
      Ref (s3, _2, Some _5)
    )
# 662 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'string) in
    Obj.repr(
# 159 "ocamldoc/odoc_text_parser.mly"
                          (
      let s2 = remove_beginning_blanks _2 in
      let s3 = remove_trailing_blanks s2 in
      let l = Odoc_misc.split_with_blanks s3 in
      Module_list l
     )
# 674 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    Obj.repr(
# 165 "ocamldoc/odoc_text_parser.mly"
             ( Index_list )
# 680 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'string) in
    Obj.repr(
# 166 "ocamldoc/odoc_text_parser.mly"
                       ( Verbatim _2 )
# 687 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'string) in
    Obj.repr(
# 167 "ocamldoc/odoc_text_parser.mly"
                          ( Latex _2 )
# 694 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'string) in
    Obj.repr(
# 168 "ocamldoc/odoc_text_parser.mly"
                           ( Target (_1, _2) )
# 702 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 169 "ocamldoc/odoc_text_parser.mly"
                           ( Link (_2, _4) )
# 710 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    Obj.repr(
# 170 "ocamldoc/odoc_text_parser.mly"
             ( Newline )
# 716 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'shortcut_list) in
    Obj.repr(
# 171 "ocamldoc/odoc_text_parser.mly"
                                                           ( List _2 )
# 723 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'shortcut_list) in
    Obj.repr(
# 172 "ocamldoc/odoc_text_parser.mly"
                                             ( List _2 )
# 730 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'shortcut_enum) in
    Obj.repr(
# 173 "ocamldoc/odoc_text_parser.mly"
                                                           ( Enum _2 )
# 737 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'shortcut_enum) in
    Obj.repr(
# 174 "ocamldoc/odoc_text_parser.mly"
                                             ( Enum _2 )
# 744 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'string) in
    Obj.repr(
# 175 "ocamldoc/odoc_text_parser.mly"
         ( Raw _1 )
# 751 "ocamldoc/odoc_text_parser.ml"
               : 'text_element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'string) in
    Obj.repr(
# 179 "ocamldoc/odoc_text_parser.mly"
         ( [] (* TODO: a test to check that there is only space characters *) )
# 758 "ocamldoc/odoc_text_parser.ml"
               : 'list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'list) in
    Obj.repr(
# 180 "ocamldoc/odoc_text_parser.mly"
              ( _2 )
# 766 "ocamldoc/odoc_text_parser.ml"
               : 'list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'item) in
    Obj.repr(
# 181 "ocamldoc/odoc_text_parser.mly"
       ( [ _1 ] )
# 773 "ocamldoc/odoc_text_parser.ml"
               : 'list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'item) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'list) in
    Obj.repr(
# 182 "ocamldoc/odoc_text_parser.mly"
            ( _1 :: _2 )
# 781 "ocamldoc/odoc_text_parser.ml"
               : 'list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    Obj.repr(
# 187 "ocamldoc/odoc_text_parser.mly"
                  ( _2 )
# 788 "ocamldoc/odoc_text_parser.ml"
               : 'item))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'shortcut_list2) in
    Obj.repr(
# 191 "ocamldoc/odoc_text_parser.mly"
                         ( _1 :: _2 )
# 796 "ocamldoc/odoc_text_parser.ml"
               : 'shortcut_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'text) in
    Obj.repr(
# 192 "ocamldoc/odoc_text_parser.mly"
       ( [ _1 ] )
# 803 "ocamldoc/odoc_text_parser.ml"
               : 'shortcut_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'shortcut_list) in
    Obj.repr(
# 196 "ocamldoc/odoc_text_parser.mly"
                                   ( _2 )
# 810 "ocamldoc/odoc_text_parser.ml"
               : 'shortcut_list2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'text) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'shortcut_enum2) in
    Obj.repr(
# 200 "ocamldoc/odoc_text_parser.mly"
                         ( _1 :: _2 )
# 818 "ocamldoc/odoc_text_parser.ml"
               : 'shortcut_enum))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'text) in
    Obj.repr(
# 201 "ocamldoc/odoc_text_parser.mly"
       ( [ _1 ] )
# 825 "ocamldoc/odoc_text_parser.ml"
               : 'shortcut_enum))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'shortcut_enum) in
    Obj.repr(
# 205 "ocamldoc/odoc_text_parser.mly"
                                   ( _2 )
# 832 "ocamldoc/odoc_text_parser.ml"
               : 'shortcut_enum2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 210 "ocamldoc/odoc_text_parser.mly"
                          ( _1 )
# 839 "ocamldoc/odoc_text_parser.ml"
               : 'string))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'string) in
    Obj.repr(
# 211 "ocamldoc/odoc_text_parser.mly"
              ( _1^_2 )
# 847 "ocamldoc/odoc_text_parser.ml"
               : 'string))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry located_element_list *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Odoc_types.text)
let located_element_list (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 2 lexfun lexbuf : (int * int * Odoc_types.text_element) list)
;;
