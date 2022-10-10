Feature: Kółko i krzyżyk
  Scenario: Kiedy uzytkownik kliknie w kafalek, to zaznacza kolko
    Given Uzytkownik uruchomil gre
    When Uzytkownik kliknal w "gorny" "lewy" kafelek
    Then "gorny" "lewy" kafelek jest "kolkiem"

  Scenario: Kiedy uzytkownik kliknie w kolejny kafalek, to zaznacza krzyzyk
    Given Uzytkownik uruchomil gre
    When Uzytkownik kliknal w "gorny" "lewy" kafelek
         And Uzytkownik kliknal w "srodkowy" "srodkowy" kafelek
    Then "srodkowy" "srodkowy" kafelek jest "krzyzkiem"

  Scenario: Kolko wygrywa
    Given Uzytkownik uruchomil gre
    When Uzytkownik kliknal w "gorny" "lewy" kafelek
         And Uzytkownik kliknal w "srodkowy" "srodkowy" kafelek
         And Uzytkownik kliknal w "srodkowy" "lewy" kafelek
         And Uzytkownik kliknal w "gorny" "prawy" kafelek
         And Uzytkownik kliknal w "dolny" "lewy" kafelek
    Then "kolko" wygrywa


  Scenario: Uruchomienie ponowne gry
      Given Uzytkownik uruchomil gre
      When Uzytkownik kliknal w "gorny" "lewy" kafelek
           And Uzytkownik kliknal w "srodkowy" "srodkowy" kafelek
           And Uzytkownik kliknal w "srodkowy" "lewy" kafelek
           And Uzytkownik kliknal w "gorny" "prawy" kafelek
           And Uzytkownik kliknal w "dolny" "lewy" kafelek
           And Uzytwkonik kliknal w powtorz
      Then uruchomiona nowa gra
