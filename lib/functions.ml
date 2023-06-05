(* just a function that takes a intput int end returns a bool *)
let square_is_even x =
    square x mod 2 = 0;;
val square_is_even : int -> bool = <fun>

(* a function with multiple arguments, separated by spaces*)
let ordered a b c =
    a <= b && b <= c;;
val ordered : 'a -> 'a -> 'a -> bool = <fun>



(* floating point (you use +. for fp)*)
let average a b =
    (a +. b) /. 2.0
val average : float -> float -> float = <fun>

(* for add a integer and floating point you have to explicity cast: *) 
float_of_int i +. f
