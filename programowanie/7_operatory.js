// opertor przypisania

let zmienna = 'jakas wartosc';

// +=    a += b    =>    a = a + b

// liczby
let a = 2;
a = a + 2;
console.log(a);

let b = 2;
b += 2;
console.log(b);

// tekst
let tekst = 'Seweryn';
tekst += ' ';
tekst += 'Jagusiak';
console.log(tekst);

// -= *= /=
let c = 10;
c -= 2;
c *= 2;
c /= 4;
console.log(c);


// tekst
let d = 'Seweryn';
d -= 'e';
console.log(d); // Nan == not a number -- czyli nie liczba

let e = true;
e -= false;
console.log(e);
console.log( true * true);


// operatory loczine
console.log(typeof(3 > 2));

console.log( 3 > 2);
console.log( 3 >= 2);
console.log( 2 > 2);
console.log( 2 >= 2);
console.log( 2 == 2);
console.log( 2 != 2);
console.log( 2 === 2);
console.log( true == 1);
console.log( true === 1);


// laczenie operatorow logicznych
let wiek = 34;
console.log(wiek >= 18 && wiek <= 65);

wiek = 17;
console.log(wiek >= 18 && wiek <= 65);

console.log(wiek < 18 || wiek > 65);

// dygresja
console.log( 1+2*3);
console.log((1+2)*3);

console.log(!(wiek >= 18 && wiek <= 65)); // <=>  console.log(wiek < 18 || wiek > 65);


// operatory matematyczne
console.log(1+2); // tez na tekscie
console.log(2-1);
console.log(2*2);
console.log(2/1);
console.log(5 % 3); // operator reszty z dzielenia!
