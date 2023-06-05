(* cons operator ::*)
1 :: [2; 3];;
(* output: [1; 2; 3] *)

(* append operator @*)
[1] @ [2; 3];;
(* output: [1; 2; 3] *)

(* polymorphic function with append @ *)
let rec append a b =
    match a with
    | [] -> b
    | h :: t -> h :: append t b;;
val append : 'a list -> 'a list -> 'a list = <fun>

(* function map takes f and a list 1. map applies each element of the list and builds a new list *)
let rec map f 1 =
    match 1 with
    | [] -> []
    | h :: t -> f h :: map f t;;
val map : ('a -> 'b) -> 'a list -> - 'b list = <fun>

(* map append to each list *)
map total -> [[1; 2]; [3; 4]; [5; 6]];;
(* o: int list = [3; 7; 11] *)

(* map x * list *)
map (fun x -> x * 2) [1; 2; 3];;
(* int list = [2; 4; 6]

(* partial application (apply a function by providing only some of its arguments. it returns a new function that takes all remaining arguments)*)

let add a b = a + b;
val add : int -> int -> int = <fun>

add;;

(* o: int -> int -> int = <fun> *)

let f = add 6;;
val f : int -> int = <fun>
f 7;;
(* o: int = 13 *)


(* at the types add and f can be use to partial application to add to each item of the list *)
map (add 6) [1; 2; 3];;
(* o: int list [7; 8; 9] *)

(* can be use to partial application to the map function to map over list of lists *)
map (map (fun x -> x * 2)) [[1; 2]; [3; 4]; [5; 6]];;
(* o: int list list = [[2; 4]; [6; 8]; [10; 12]] *)
