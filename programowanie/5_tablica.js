let uczen1 = 'Seweryn';
let uczen2 = 'Michał';
let uczen3 = 'Kasia';
//...

// polczenie wartosci w liste
let uczniowie = ['Seweryn', 'Michał', 'Kasia'];
console.log(uczniowie);

// jak dostac sie do imienia drugiego ucznia
// tablice numerowane sa od 0
console.log(uczniowie[1]);

uczniowie[1] = 'Michal';
console.log(uczniowie[1]);

// ile elementow jest w tablicy
console.log(uczniowie.length);

// czy tablica moze byc pusta
let pusta = [];
console.log(pusta.length);


console.log(pusta);
// zmiana elementow w tablicy
pusta.push(1410);

console.log(pusta);


// na ktorej pozycji jest uczen o imieniu Seweryn
console.log(uczniowie.indexOf('Seweryn'));


console.log(uczniowie.indexOf('Bartek'));
