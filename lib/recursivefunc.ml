let rec range a b =
    if a > b then []
    else a :: range (a + 1) b;;
val range : int -> int -> int list = <fun>
let digits = range 0 9;;
val digits : int list = [0; 1; 3; 4; 5; 6; 7; 8; 9;]
