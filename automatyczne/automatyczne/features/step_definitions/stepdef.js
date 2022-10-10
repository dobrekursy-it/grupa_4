const assert = require('assert');
const { Given, When, Then, setDefaultTimeout } = require('@cucumber/cucumber');
const {Builder, By} = require('selenium-webdriver');
setDefaultTimeout(600 * 1000);
let driver = new Builder().forBrowser('chrome').build();

const pobierzKafelek = (rzad, kolumna) => {
  const num = (["gorny", "srodkowy", "dolny"].indexOf(rzad) * 3) + ["lewy", "srodkowy", "prawy"].indexOf(kolumna);
  return driver.findElement(By.id('s'+ num));
};

const pobierzZnak = (pelnaNazwaZnaku) => pelnaNazwaZnaku.startsWith("kol") ? "o" : "x";

Given('Uzytkownik uruchomil gre', function () {
  driver.get('https://jagusiak.github.io/xo/');
});

When('Uzytkownik kliknal w {string} {string} kafelek', function (rzad, kolumna) {
    pobierzKafelek(rzad, kolumna).click();
});

When('Uzytwkonik kliknal w powtorz', function () {
    driver.findElement(By.id('o-win')).findElement(By.className('link')).click();
});

Then('{string} {string} kafelek jest {string}', async function (rzad, kolumna, pelnaNazwaZnaku) {
    const dataSign = await pobierzKafelek(rzad, kolumna).getAttribute('data-sign');
    assert.strictEqual(pobierzZnak(pelnaNazwaZnaku), dataSign);
});

Then('{string} wygrywa', async function (pelnaNazwaZnaku) {
    const isDisplayed = await driver.findElement(By.id(pobierzZnak(pelnaNazwaZnaku) + '-win')).isDisplayed();
    assert.strictEqual(true, isDisplayed);
});

Then('uruchomiona nowa gra', async function () {
  const opcje = ["o", "x", "d"];
  for (let i = 0 ;  i< opcje.length; i++) {
    const isDisplayed = await driver.findElement(By.id(opcje[i]+ '-win')).isDisplayed();
    assert.strictEqual(false, isDisplayed);
  }
});
