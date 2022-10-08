const znajdzMaximum = (liczby) => {
  let max = liczby[0];
  for (let i = 1; i < liczby.length; i++) {
    if (liczby[i] > max) {
      max = liczby[i]
    }
  }
  return max;
}

const generujLiczby = (ileLiczb, zakres) => {
  const tablica = [];
  while (ileLiczb-- > 0) {
    tablica.push(Math.round(Math.random()*zakres));
  }
  return tablica;
};

function znajdzMinimum(liczby) {
  let min = liczby[0];
  for (let i = 1; i < liczby.length; i++) {
    if (liczby[i] < min) {
      min = liczby[i]
    }
  }
  // this
  return min;
}

const dodaj2 = (liczba) => liczba + 2;

const a = [1,2,3]
const b = znajdzMaximum(a);

console.log(b);
console.log(znajdzMaximum([-1,-2,-3]));


console.log(generujLiczby(1000, 100));

const duzoLiczb = generujLiczby(4, 100);
console.log(duzoLiczb);
console.log(znajdzMaximum(duzoLiczb));
console.log(znajdzMinimum(duzoLiczb));

console.log(dodaj2(2));
