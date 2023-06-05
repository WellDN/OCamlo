let rec factorial n =
    if n <= 1 then 1 else n * factorial (n - 1);;
val factorial : int -> int = <func>

(* instead of if then or else use match *)
let rec factorial n =
    match n with
    | 0 | 1 -> 1
    | x -> x * factorial (x - 1);;
val factorial : int -> int = <fun>

(* equally it could be pattern _ which matches anything *)
let rec factorial n =
    match n with
    | 0 | 1 -> 1
    | _ -> n * factorial (n - 1);;
val factiorial : int -> int = <fun>

(* in fact, we may simplify further with function keyword *)
let rec factorial = function
    | 0 | 1 -> |
    | n -> n * factorial (n - 1);;
val factorial : int -> int = <func>
