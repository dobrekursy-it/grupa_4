let wiek = 28;

if (wiek >= 18 && wiek <= 65) {
  console.log("Osoba w wieku produkcyjnym");
} else {
  console.log("Osoba nie jest wieku produkcyjnym");
}

// znajdz maks z 3 liczb: a,b,c:
let a = 21;
let b = 20;
let c = 21;


if (a > b) {
  if (a > c) {
    console.log(a);
  } else {
    console.log(c);
  }
} else {
  if (b > c) {
    console.log(b);
  } else {
    console.log(c);
  }
}
