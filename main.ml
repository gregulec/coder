open Printf
open String
open Coder

let en text = 
	let chose code = 
	match code with
	|"GADERYPOLUKI" | "gaderypoluki" -> printf "Szyfrogram: %s\n" (map gaderypoluki text)
	|"POLITYKARENU" | "politykarenu" -> printf "Szyfrogram: %s\n" (map politykarenu text)
	|"KACEMINUTOWY" | "kaceminutowy" -> printf "Szyfrogram: %s\n" (map kaceminutowy text)
	|"MALINOWEBUTY" | "malinowebuty" -> printf "Szyfrogram: %s\n" (map malinowebuty text)
	|_ -> printf "Nie ma takiego szyfru\n"
	in
	printf "Wybież klucz:\tGADERYPOLUKI\tPOLITYKARENU\tKACEMINUTOWY\tMALINOWEBUTY\n";
	chose (read_line ());;
	
let de text = 
	printf "Zdeszyfrowane przez GADERYPOLUKI: %s\n" (map gaderypoluki text);
	printf "Zdeszyfrowane przez POLITYKARENU: %s\n" (map politykarenu text);
	printf "Zdeszyfrowane przez KACEMINUTOWY: %s\n" (map kaceminutowy text);
	printf "Zdeszyfrowane przez MALINOWEBUTY: %s\n" (map malinowebuty text);;

let read info cryption= 
printf "%s" info;
cryption (read_line ());;

let decision line = 
	match line with
	|"s" | "S" -> read "Podaj wiadomość do zaszyfrowania: " en
	|"d" | "D" -> read "Podaj szyfrogram do odszyfrowania: " de
	|_ -> printf "Brak takiego wyboru.\n" ;;

printf "Chcesz szyfrować czy deszyfrować? (s/d) ";;
decision (read_line ());;
