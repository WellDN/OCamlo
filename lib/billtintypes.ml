(* tuple: ',' and '*'*)
let t = (1, "one", '1');;
val t : int * string * char = (1, "one", '1')

(* Record *)
type person =
    {first_name : string;
    surname : string;
    age : int};;
type person = { first_name: string, surname: string, age: int; }
let frank =
    {first_name = "Frank";
    surname = "Smith";
    age = 40};;
val frank : person = {first_name: "Frank"; surname: "Smith"; age = 40}
let s = frank.surname;;
val s : string = "Smith"
