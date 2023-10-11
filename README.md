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

# Tworzenie kodu:
  1. Importujemy:
  - tkinter  jako tk
  - messagebox z biblioteki tkinter
  - Image i ImageTk z biblioteki PIL (pillow)
  - mysql.connector
  - random jako r
  - matplotlib jako plt
  2. Łączymy z bazą danych (z pytaniami) za pomocą mysql.connector <br>
  3. Tworzymy obiektu cursor
  4. Wykonujemy instrukcje SELECT do obiektu cursor
  5. Losowujemy 12 pytań
  6. Tworzymy okno tkinter
  7. Definiujemy zmienne
  8. Tworzymy funkcje generującą pytania z bazy danych
  9. Tworzymy funkcje sprawdzającą poprawności odpowiedzi użytkownika
  10. Tworzymy 3 funkcje kół ratunkowych:
   - pół na pół
   - telefon do przyjaciela
   - pomoc publiczności
  11. Tworzymy funkcje odliczającą czas
  12. Tworzymy zmienne wyświetlające pytania
  13. Tworzymy przyciski odpowiedzi
  14. Tworzymy przyciski kół ratunkowych
  15. Tworzymy pola wygranych sum pieniężnych
  16. Tworzymy zmienną odpowiadającą za mierzenie czasu
  17. Tworzymy kredyty (opcjonalne)
  18. Tworzymy zasady gry
  19. Tworzymy kod do startu gry


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