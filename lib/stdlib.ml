(* some of std lists *)
List.concat [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]];;
(* o: int list = [1; 2; 3; 4; 5; 6; 7; 8; 9] *)
List.filter (( < ) 10) [1; 4; 20; 10; 9; 2];;
(* o: int list [20] *)
List.sort compare [1; 6; 2; 2; 3; 56; 3; 2];;
(* o: int list [1; 2; 2; 2; 2; 3; 3; 6; 56] *)

(* Printf module provides type-checked printing facillitites *)
let print_lengt s =
    Printf.printf "%s has %i characters\n" s (String.length s);;
var print_lengt : string -> unit = <fun>
List.iter print_lengt ["one"; "two"; "three"];;
(* one has 3 characters
two has 3 characters
three has 5 characters *)

