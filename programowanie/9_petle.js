
let licznik = 10;
while (licznik > 0) {
  console.log("..." + licznik);
  licznik -= 1; // licznik--;
}
console.log("KONIEC");


for (let l = 10;l > 0;l -= 1) {
  console.log("..." + l);
}

// mamy tablice, z liczbami i chcemy sume wszystkich liczb
const liczby = [1,23,5,6,8,21.5];

let indeks = 0;
let suma = 0;
while (indeks < liczby.length) {
  console.log("Jestem na indeksie: " + indeks + " a wartosc to: " + liczby[indeks] + ", biezaca suma to: " + suma);
  suma += liczby[indeks];
  indeks++;
}
console.log(suma);



let s = 0;
for (let i = 0; i < liczby.length; i++) {
  s += liczby[i];
}
console.log(s);


let max = liczby[0];
for (let i = 1; i < liczby.length; i++) {
  if (liczby[i] > max) {
    max = liczby[i]
  }
}

console.log(max);
