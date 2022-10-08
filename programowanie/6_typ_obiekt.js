let uczenImie = 'Seweryn';
let uczenNazwisko = 'Jagusiak';
let uczenWiek = 34;
let uczenDrugiJezyk = true;

let uczen = {
  imie: "Michał",
  nazwisko: "Jagusiak",
  uczenWiek: 32,
  drugiJezyk: false,
};

console.log(uczen);

// podobne operacje
uczen['imie'] = 'Michal';

console.log(uczen);

uczen['zwolnienieZWF'] = true;

console.log(uczen);

// inna skladnia
console.log(uczen.imie);
uczen.imie = 'Michał';
console.log(uczen.imie);

const uczniowie = [
  { imie: 'Seweryn', wiek: 34}, { imie: 'Michał', wiek: 32}
];
console.log(uczniowie);
uczniowie[1].imie = 'Michal';
console.log(uczniowie);
