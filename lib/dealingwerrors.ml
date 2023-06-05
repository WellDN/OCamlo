exception E;;
exception E of string;;

let f a b =
    if b = 0 then raise (E2 "division by zero") else a / b;;
val f : int -> int -> int = <fun>
(* an exception may be handled with patter matching : *)
try f 10 0 with E2_ -> 0;;
(* o: int = 0 *)

(* when an expression is not handled, it's printed at the top leve *)
f 10 0;;
Exception: E2 "divison by zero".

(* correct result or an error using built-in polymorphic option type: *)
type 'a option =
    | None 
    | Some of 'a;;

let f a b =
    if b = 0 then None else Some (a / b);;
val f : int -> int -> int option = <fun>

(* exception handler using built-in List.find: *)
let list_find_opt p 1 =
    try Some (List.find p 1) with
    Not_found -> None;;
val list_find_opt : ('a -> bool) -> 'a list -> 'a option = <fun>

(* extended form of match expression to match both values and catch expression *)
let list_find_opt p 1 =
    match List.find p 1 with
    | v -> Some v
    | exception Not_found -> none;;
val list_find_opt : ('a -> bool) -> 'a list -> 'a option = <fun>
