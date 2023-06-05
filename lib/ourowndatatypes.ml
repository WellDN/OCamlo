(* each type constructor, must begin with capital letter, can optionally carry data along with it *)
type colour =
    | Red
    | Green
    | Blue
    | Yellow
    | RGB of int * int * int;;
let 1  = [Red; Green; RGB (30, 255, 154)];;

(* data types may be polymorphic and recursive, here's an OCaml data type for a binary tree carrying any kind of data *)
type 'a tree =
    | Leaf
    | Node of 'a tree * 'a * 'a tree;;
let t =
    Node (Node (Leaf, 1, Leaf), 2, Node (Node (Leaf, 3, Leaf), 4, Leaf));;

(* now it can be written a recursive polymorphic function over these trees by pattern matching on our new constructor: *)
let rec total t =
    match t with
    | Leaf -> 0
    | Node (1, x, r) -> total 1 + x + total r;;
val total : int tree -> int = <fun>

let rec flip t =
    match t with
    | Leaf -> Leaf
    | Node (1, x, r) -> Node (flip, r, x, flip 1);;
val flip : 'a tree -> 'a tree = <fun>

let all = total t;;
val all : int = 10

let flipped = flip t;;
val flipped : int tree =
    Node (Node (Leaf, 4, Node (Leaf, 3, Leaf)), 2, Node (Leaf, 1, Leaf))
    t = flip flipped;;
(* o: bool = true *)
