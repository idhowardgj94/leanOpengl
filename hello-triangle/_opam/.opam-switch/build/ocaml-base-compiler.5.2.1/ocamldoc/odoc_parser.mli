type token =
  | Description of (
# 21 "ocamldoc/odoc_parser.mly"
        string * (string option)
# 6 "ocamldoc/odoc_parser.mli"
)
  | See_url of (
# 23 "ocamldoc/odoc_parser.mly"
        string
# 11 "ocamldoc/odoc_parser.mli"
)
  | See_file of (
# 24 "ocamldoc/odoc_parser.mly"
        string
# 16 "ocamldoc/odoc_parser.mli"
)
  | See_doc of (
# 25 "ocamldoc/odoc_parser.mly"
        string
# 21 "ocamldoc/odoc_parser.mli"
)
  | T_PARAM of (
# 27 "ocamldoc/odoc_parser.mly"
        string
# 26 "ocamldoc/odoc_parser.mli"
)
  | T_AUTHOR
  | T_VERSION
  | T_SEE
  | T_SINCE
  | T_BEFORE of (
# 32 "ocamldoc/odoc_parser.mly"
        string
# 35 "ocamldoc/odoc_parser.mli"
)
  | T_DEPRECATED
  | T_RAISES of (
# 34 "ocamldoc/odoc_parser.mly"
        string
# 41 "ocamldoc/odoc_parser.mli"
)
  | T_RETURN
  | T_CUSTOM of (
# 36 "ocamldoc/odoc_parser.mly"
        string
# 47 "ocamldoc/odoc_parser.mli"
)
  | EOF
  | Desc of (
# 40 "ocamldoc/odoc_parser.mly"
        string
# 53 "ocamldoc/odoc_parser.mli"
)

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> (string * (string option)) option
val info_part2 :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> unit
val see_info :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Odoc_types.see_ref * string
