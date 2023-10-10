# Wymagania
Program do działania wymaga python 3.x oraz następujących bibliotek: <br>
Pillow, <br>
mysql.connector, <br>
matplotlib <br>

# Opis wyglądu
Na środku ekranu będzie wyświetlone pytanie i pod nim 4 odpowiedzi, tylko jedno jest poprawne.
Po prawej stronie ekranu będzie suma możliwych pieniędzy do wygrania za dane pytanie.
Nad sumami piniężnymi za pytania będą 3 koła ratunkowe:
  - 50:50
  - telefon do przyjaciela
  - pomoc publiczności

# Cel gry:
  Celem gry jest zdobycie jak największej wygranej, która może wynosić milion lub inny ustalony wcześniej próg wygranej.

# Podstawowy układ gry:
  Gra składa się z 12 pytań, z których każde ma cztery możliwe odpowiedzi, z których tylko jedna jest prawidłowa.

# Wygrane pieniężne:
  Po każdym poprawnym pytaniu gracz zdobywa określoną sumę pieniędzy. <br>
  Ostateczna wygrana to zazwyczaj milion złotych lub inna ustalona wcześniej suma.

# Przegrana:
  Jeśli gracz udzieli nieprawidłowej odpowiedzi, kończy się gra.

# Warunki wygranej:
  Aby wygrać milion, gracz musi odpowiedzieć poprawnie na wszystkie pytania.

# Pomocnicze opcje:
  Gracz może skorzystać z trzech rodzajów pomocy:
  - "Pół na pół": Eliminacja dwóch nieprawidłowych odpowiedzi, pozostawiając jedną prawidłową i jedną losową z pozostałych.
  - "Pytanie do publiczności": Grupa publiczności głosuje na swoją preferowaną odpowiedź, a wyniki są wyświetlane.
  - "Telefon do przyjaciela": Gracz może zadzwonić do przyjaciela, aby uzyskać pomoc w wyborze odpowiedzi.

# Odpowiedzi na pytania:
  Gracz musi wybrać jedną odpowiedź spośród czterech możliwych. Po wyborze danej odpowiedzi nie ma możliwości zmiany odpowiedzi.

# Informacje dodatkowe:
  Program napisany przy pomocy bibloioteki tkinter'a <br>

  Głowny programista: <br>
  Jan Jakowicki <br>

  Baza Danych: <br>
  Anastasiia Bondarenko <br>

  Grafiki: <br>
  Jakub Dratwa, Bastian Wiciński <br>

  Dokumentacja README: <br>
  Gerard Gondek <br>

  Dokumentacja programu (komentarze): <br>
  Bastian Wiciński <br>

  Testowanie programu: <br>
  Jakub Dratwa 

# Testy:
  - zostanie kliknięty przycisk z poprawną odpowiedzią - program przechodzi dalej, zmienia się liczba wygranej kwoty, zmieniają się odpowiedzi i pytanie
  - zostanie klikięta zła odpowiedź - wyświetla się okno z napisem przegrałeś z przyciskiem ok. jak kliknie się przycisk ok program zamyka się
  - zostanie kliknięty przycisk 50/50 - 2 z czterech odpowiedzi stają się niedostępne, zostaje tylko i poprawna i jedna błędna. przycisk można kliknąć tylko raz.
  - zostanie kliknięty przycisk telefon do pryjaciela - wyświetla się okno z napisem pryjaciel mówi że poprawną odpowiedzą jest...  . okno pokazuje poprawną odpowiedź. przycisk można kliknąć tylko raz. 
  - zostanie kliknięty przycisk pytanie do publiczności - wyświetla się okno z wykresem kołowym na którym są przedstawione wszystkie 4 odpowiedzi. poprawna odpowiedź ma najwięcej procent. przycisk można kliknąć tylko raz. 
  - program może zostać zminimalizowany. program nie może zostać powiększony ponieważ ma ustawione dane wymiary.
  - po 60 sekundach wyświetla się okno z napisem przegrałeś 
  - przycisk credits - wyświetla się okno z rospiską kto co zrobił.