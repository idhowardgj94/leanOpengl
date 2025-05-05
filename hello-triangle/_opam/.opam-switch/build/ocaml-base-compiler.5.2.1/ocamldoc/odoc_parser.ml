type token =
  | Description of (
# 21 "ocamldoc/odoc_parser.mly"
        string * (string option)
# 6 "ocamldoc/odoc_parser.ml"
)
  | See_url of (
# 23 "ocamldoc/odoc_parser.mly"
        string
# 11 "ocamldoc/odoc_parser.ml"
)
  | See_file of (
# 24 "ocamldoc/odoc_parser.mly"
        string
# 16 "ocamldoc/odoc_parser.ml"
)
  | See_doc of (
# 25 "ocamldoc/odoc_parser.mly"
        string
# 21 "ocamldoc/odoc_parser.ml"
)
  | T_PARAM of (
# 27 "ocamldoc/odoc_parser.mly"
        string
# 26 "ocamldoc/odoc_parser.ml"
)
  | T_AUTHOR
  | T_VERSION
  | T_SEE
  | T_SINCE
  | T_BEFORE of (
# 32 "ocamldoc/odoc_parser.mly"
        string
# 35 "ocamldoc/odoc_parser.ml"
)
  | T_DEPRECATED
  | T_RAISES of (
# 34 "ocamldoc/odoc_parser.mly"
        string
# 41 "ocamldoc/odoc_parser.ml"
)
  | T_RETURN
  | T_CUSTOM of (
# 36 "ocamldoc/odoc_parser.mly"
        string
# 47 "ocamldoc/odoc_parser.ml"
)
  | EOF
  | Desc of (
# 40 "ocamldoc/odoc_parser.mly"
        string
# 53 "ocamldoc/odoc_parser.ml"
)

open Parsing
let _ = parse_error;;
# 2 "ocamldoc/odoc_parser.mly"
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

open Odoc_comments_global

# 76 "ocamldoc/odoc_parser.ml"
let yytransl_const = [|
  262 (* T_AUTHOR *);
  263 (* T_VERSION *);
  264 (* T_SEE *);
  265 (* T_SINCE *);
  267 (* T_DEPRECATED *);
  269 (* T_RETURN *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* Description *);
  258 (* See_url *);
  259 (* See_file *);
  260 (* See_doc *);
  261 (* T_PARAM *);
  266 (* T_BEFORE *);
  268 (* T_RAISES *);
  270 (* T_CUSTOM *);
  271 (* Desc *);
    0|]

let yylhs = "\255\255\
\003\000\004\000\004\000\004\000\001\000\001\000\002\000\005\000\
\005\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\006\000\006\000\006\000\007\000\008\000\009\000\010\000\011\000\
\012\000\013\000\014\000\015\000\016\000\000\000\000\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\001\000\001\000\002\000\001\000\
\002\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\005\000\006\000\030\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\031\000\000\000\000\000\010\000\011\000\012\000\013\000\
\014\000\015\000\016\000\017\000\018\000\019\000\002\000\003\000\
\004\000\032\000\000\000\020\000\021\000\022\000\023\000\024\000\
\025\000\026\000\027\000\028\000\029\000\007\000\009\000\001\000"

let yydgoto = "\004\000\
\007\000\018\000\034\000\035\000\019\000\020\000\021\000\022\000\
\023\000\024\000\025\000\026\000\027\000\028\000\029\000\030\000"

let yysindex = "\011\000\
\001\000\253\254\013\255\000\000\000\000\000\000\000\000\241\254\
\003\255\004\255\005\255\006\255\007\255\008\255\009\255\010\255\
\011\255\000\000\027\000\253\254\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\014\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\028\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\010\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yytablesize = 258
let yytable = "\036\000\
\006\000\008\000\009\000\010\000\011\000\012\000\013\000\014\000\
\015\000\016\000\017\000\001\000\002\000\003\000\031\000\032\000\
\033\000\037\000\038\000\039\000\040\000\041\000\042\000\043\000\
\044\000\045\000\046\000\008\000\048\000\047\000\000\000\000\000\
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
\000\000\005\000"

let yycheck = "\015\001\
\000\000\005\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\014\001\001\000\002\000\003\000\002\001\003\001\
\004\001\015\001\015\001\015\001\015\001\015\001\015\001\015\001\
\015\001\015\001\000\000\000\000\015\001\020\000\255\255\255\255\
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
\255\255\001\001"

let yynames_const = "\
  T_AUTHOR\000\
  T_VERSION\000\
  T_SEE\000\
  T_SINCE\000\
  T_DEPRECATED\000\
  T_RETURN\000\
  EOF\000\
  "

let yynames_block = "\
  Description\000\
  See_url\000\
  See_file\000\
  See_doc\000\
  T_PARAM\000\
  T_BEFORE\000\
  T_RAISES\000\
  T_CUSTOM\000\
  Desc\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'see_ref) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 51 "ocamldoc/odoc_parser.mly"
               ( (_1, _2) )
# 244 "ocamldoc/odoc_parser.ml"
               : Odoc_types.see_ref * string))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 55 "ocamldoc/odoc_parser.mly"
            ( Odoc_types.See_url _1 )
# 251 "ocamldoc/odoc_parser.ml"
               : 'see_ref))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "ocamldoc/odoc_parser.mly"
           ( Odoc_types.See_file _1 )
# 258 "ocamldoc/odoc_parser.ml"
               : 'see_ref))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 57 "ocamldoc/odoc_parser.mly"
          ( Odoc_types.See_doc _1 )
# 265 "ocamldoc/odoc_parser.ml"
               : 'see_ref))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string * (string option)) in
    Obj.repr(
# 61 "ocamldoc/odoc_parser.mly"
              ( Some _1 )
# 272 "ocamldoc/odoc_parser.ml"
               : (string * (string option)) option))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "ocamldoc/odoc_parser.mly"
      ( None )
# 278 "ocamldoc/odoc_parser.ml"
               : (string * (string option)) option))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'element_list) in
    Obj.repr(
# 66 "ocamldoc/odoc_parser.mly"
                   ( () )
# 285 "ocamldoc/odoc_parser.ml"
               : unit))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'element) in
    Obj.repr(
# 70 "ocamldoc/odoc_parser.mly"
          ( () )
# 292 "ocamldoc/odoc_parser.ml"
               : 'element_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'element) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'element_list) in
    Obj.repr(
# 71 "ocamldoc/odoc_parser.mly"
                       ( () )
# 300 "ocamldoc/odoc_parser.ml"
               : 'element_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'param) in
    Obj.repr(
# 75 "ocamldoc/odoc_parser.mly"
        ( () )
# 307 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'author) in
    Obj.repr(
# 76 "ocamldoc/odoc_parser.mly"
         ( () )
# 314 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'version) in
    Obj.repr(
# 77 "ocamldoc/odoc_parser.mly"
          ( () )
# 321 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'see) in
    Obj.repr(
# 78 "ocamldoc/odoc_parser.mly"
      ( () )
# 328 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'since) in
    Obj.repr(
# 79 "ocamldoc/odoc_parser.mly"
        ( () )
# 335 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'before) in
    Obj.repr(
# 80 "ocamldoc/odoc_parser.mly"
         ( () )
# 342 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'deprecated) in
    Obj.repr(
# 81 "ocamldoc/odoc_parser.mly"
             ( () )
# 349 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'raise_exc) in
    Obj.repr(
# 82 "ocamldoc/odoc_parser.mly"
            ( () )
# 356 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'return) in
    Obj.repr(
# 83 "ocamldoc/odoc_parser.mly"
         ( () )
# 363 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'custom) in
    Obj.repr(
# 84 "ocamldoc/odoc_parser.mly"
         ( () )
# 370 "ocamldoc/odoc_parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 88 "ocamldoc/odoc_parser.mly"
                 ( params := !params @ [(_1, _2)] )
# 378 "ocamldoc/odoc_parser.ml"
               : 'param))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 91 "ocamldoc/odoc_parser.mly"
                  ( authors := !authors @ [ _2 ] )
# 385 "ocamldoc/odoc_parser.ml"
               : 'author))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 94 "ocamldoc/odoc_parser.mly"
                   ( version := Some _2 )
# 392 "ocamldoc/odoc_parser.ml"
               : 'version))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 97 "ocamldoc/odoc_parser.mly"
               ( sees := !sees @ [_2] )
# 399 "ocamldoc/odoc_parser.ml"
               : 'see))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 100 "ocamldoc/odoc_parser.mly"
                 ( since := Some _2 )
# 406 "ocamldoc/odoc_parser.ml"
               : 'since))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 103 "ocamldoc/odoc_parser.mly"
                  ( before := !before @ [(_1, _2)] )
# 414 "ocamldoc/odoc_parser.ml"
               : 'before))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 106 "ocamldoc/odoc_parser.mly"
                      ( deprecated := Some _2 )
# 421 "ocamldoc/odoc_parser.ml"
               : 'deprecated))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 110 "ocamldoc/odoc_parser.mly"
    (  raised_exceptions := !raised_exceptions @ [(_1, _2)] )
# 429 "ocamldoc/odoc_parser.ml"
               : 'raise_exc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 113 "ocamldoc/odoc_parser.mly"
                  ( return_value := Some _2 )
# 436 "ocamldoc/odoc_parser.ml"
               : 'return))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 117 "ocamldoc/odoc_parser.mly"
                  ( customs := !customs @ [(_1, _2)] )
# 444 "ocamldoc/odoc_parser.ml"
               : 'custom))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry info_part2 *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry see_info *)
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
   (Parsing.yyparse yytables 1 lexfun lexbuf : (string * (string option)) option)
let info_part2 (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 2 lexfun lexbuf : unit)
let see_info (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 3 lexfun lexbuf : Odoc_types.see_ref * string)
;;
