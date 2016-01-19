type color =
  | Black
  | Red
  | Green
  | Yellow
  | Blue
  | Magenta
  | Cyan
  | White

let int_of_color col =
  match col with
    | Black   -> 0
    | Red     -> 1
    | Green   -> 2
    | Yellow  -> 3
    | Blue    -> 4
    | Magenta -> 5
    | Cyan    -> 6
    | White   -> 7

let foreground col text =
let open Printf in
  sprintf "\x1B[3%dm%s\x1B[0m" (int_of_color col) text

let background col text =
let open Printf in
  sprintf "\x1B[4%dm%s\x1B[0m" (int_of_color col) text

let bold text =
let open Printf in
  sprintf "\x1B[1m%s\x1B[0m" text

let underline text =
let open Printf in
  sprintf "\x1B[4m%s\x1B[0m" text
