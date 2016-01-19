type color =
  | Black
  | Red
  | Green
  | Yellow
  | Blue
  | Magenta
  | Cyan
  | White

val int_of_color : color -> int
val foreground : color -> string -> string
val background : color -> string -> string
val bold : string -> string
val underline : string -> string
