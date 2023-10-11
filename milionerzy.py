# Importowanie:
import tkinter as tk  # biblioteka tkinter  jako tk
from tkinter import messagebox  # messagebox z biblioteki tkinter
from PIL import ImageTk, Image  #  Image i ImageTk z biblioteki PIL (pillow)
import mysql.connector  # łącznik mysql
import random as r  # biblioteka random jako r
import matplotlib.pyplot as plt  # biblioteka matplotlib jako plt

# Połączenie z bazą danych milionerzy
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="milionerzy"
)

# Tworzenie obiektu kursora
cursor = conn.cursor()

# Utworzenie okna tkinter
root = tk.Tk()
root.title("Milionerzy")
root.resizable(0, 0)
root.configure(background="blue")

# Zdefiniowwanie zmiennych 
nr_pytania = 0
poprawna = ""
A = ""
B = ""
C = ""
D = ""
time = 0

# Utworzenie funkcji restartu programu
def reset():
    global nr_pytania, poprawna, A, B, C, D, time, results
    if nr_pytania > 0:
        wygrane[nr_pytania-1].config(fg="black")
    nr_pytania = 0
    poprawna = ""
    A = ""
    B = ""
    C = ""
    D = ""
    time = 0
    cursor.execute('SELECT * FROM pytania')
    results = cursor.fetchall()
    results = r.sample(results, 12)
    pytania()

#Utworzenie funkcji generującej pytania z bazy danych
def pytania():
    global results, nr_pytania, poprawna, A, B, C, D
    if nr_pytania <= 11:   
        pytanie_tekst.config(text="Pytanie nr."+str(nr_pytania+1)+"\n"+results[nr_pytania][1])
        A = results[nr_pytania][2].strip()
        B = results[nr_pytania][3].strip()
        C = results[nr_pytania][4].strip()
        D = results[nr_pytania][5].strip()
        poprawna = results[nr_pytania][6].strip()
        przycisk_a.config(text=A)
        przycisk_b.config(text=B)
        przycisk_c.config(text=C)
        przycisk_d.config(text=D)
        wygrane[nr_pytania].config(fg="yellow")
        if nr_pytania > 0:
            wygrane[nr_pytania-1].config(fg="black")

        nr_pytania += 1
    else:
        messagebox.showinfo("Koniec gry", "Wygrałeś 1 000 000")
        reset()

#  Utworzenie funkcji sprawdzania poprawności odpowiedzi użytkownika
def spr(odp):
    global poprawna, time
    if poprawna == odp:
        print("Dobrze")
        pytania()
        przycisk_a.config(state="normal")
        przycisk_b.config(state="normal")
        przycisk_c.config(state="normal")
        przycisk_d.config(state="normal")
        time = 0
    else:
        print("Źle")
        messagebox.showerror("Koniec gry", "Przegrałeś")
        reset()

#  Utworzenie funkcji koła ratunkowego pół na pól
def pol_na_pol():
    global poprawna, A, B, C, D
    if poprawna == A:
        przycisk_b.config(state="disabled")
        przycisk_c.config(state="disabled")
    elif poprawna == B:
        przycisk_a.config(state="disabled")
        przycisk_c.config(state="disabled")
    elif poprawna == C:
        przycisk_a.config(state="disabled")
        przycisk_d.config(state="disabled")
    elif poprawna == D:
        przycisk_b.config(state="disabled")
        przycisk_c.config(state="disabled")

    kolo_pol_na_pol.config(state="disabled")
    kolo_pol_na_pol.config(image=kolo_pol_na_pol_klik_img)

#  Utworzenie funkcji koła ratunkowego telefon do przyjaciela
def telefon():
    messagebox.showinfo("Telefon do przyjaciela", "Przyjaciej mówi ci że odpowiedzią jest: "+poprawna)

    kolo_telefon.config(state="disabled")
    kolo_telefon.config(image=kolo_telefon_klik_img)

#  Utworzenie funkcji koła ratunkowego publiczność
def publicznosc():
    wykres = plt.figure(figsize=(5, 5))
    if poprawna == A:
        plt.pie([40, 15, 20, 10], labels=[A, B, C, D], autopct='%1.1f%%')
    elif poprawna == B:
        plt.pie([10, 40, 15, 20], labels=[A, B, C, D], autopct='%1.1f%%')
    elif poprawna == C:
        plt.pie([20, 10, 40, 15], labels=[A, B, C, D], autopct='%1.1f%%')
    elif poprawna == D:
        plt.pie([15, 20, 10, 40], labels=[A, B, C, D], autopct='%1.1f%%')
    
    plt.title("Publiczność")
    plt.show()

    kolo_publicznosc.config(state="disabled")
    kolo_publicznosc.config(image=kolo_publicnosc_klik_img)

# Utworzenie funkcji odliczającej czas
def update():
    global time
    time += 1
    Czas.configure(text="Czas: "+str(time)+"s")
    root.after(1000, update)
    if time > 60:
        messagebox.showerror("Koniec gry", "Przegrałeś")
    if time > 30:
        time = 0
        messagebox.showerror("Koniec gry", "Czas się skończył. Przegrałeś")
        reset()

# Tworzenie zmiennych wyświetlających pytania  
pytanie = tk.Canvas(root, width=800, height=600, bg="blue")
pytanie.grid(row=0, column=0, columnspan=2)

pytanie_tekst = tk.Label(pytanie, text="", font=("Arial", 20), bg="lightblue")
pytanie_tekst.grid(row=0, column=0, columnspan=2)


# Tworzenie przycisków odpowiedzi 
przyciski = tk.Canvas(root, width=800, height=600, bg="blue")
przyciski.grid(row=1, column=0, columnspan=3)

przycisk_a = tk.Button(przyciski, text="",width=40, height=5, bg="lightblue", command=lambda: spr(A))
przycisk_a.grid(row=1, column=0)

przycisk_b = tk.Button(przyciski, text="", width=40, height=5, bg="lightblue", command=lambda: spr(B))
przycisk_b.grid(row=1, column=1)

przycisk_c = tk.Button(przyciski, text="", width=40, height=5, bg="lightblue", command=lambda: spr(C))
przycisk_c.grid(row=2, column=0)

przycisk_d = tk.Button(przyciski, text="", width=40, height=5, bg="lightblue", command=lambda: spr(D))
przycisk_d.grid(row=2, column=1)

# Tworzenie przycisków kół ratunkowych: 
kola = tk.Canvas(root, width=800, height=600, bg="blue")
kola.grid(row=0, column=3, columnspan=2)

# Koło ratunkowe pół na pół
kolo_pol_na_pol_img = ImageTk.PhotoImage(Image.open("grafika/polnapol.png"))
kolo_pol_na_pol_klik_img = ImageTk.PhotoImage(Image.open("grafika/polnapol_klik.png"))
kolo_pol_na_pol = tk.Button(kola, image=kolo_pol_na_pol_img, command=pol_na_pol, borderwidth=0)
kolo_pol_na_pol.grid(row=0, column=0)

# Koło ratunkowe telefon do przyjaciela
kolo_telefon_img = ImageTk.PhotoImage(Image.open("grafika/telefon.png"))
kolo_telefon_klik_img = ImageTk.PhotoImage(Image.open("grafika/telefon_klik.png"))
kolo_telefon = tk.Button(kola, image=kolo_telefon_img, command=telefon, borderwidth=0)
kolo_telefon.grid(row=0, column=1)

# Koło ratunkowe publiczność
kolo_publicnosc_img = ImageTk.PhotoImage(Image.open("grafika/publicznosc.png"))
kolo_publicnosc_klik_img = ImageTk.PhotoImage(Image.open("grafika/publicznosc_klik.png"))
kolo_publicznosc = tk.Button(kola, image=kolo_publicnosc_img, command=publicznosc, borderwidth=0)
kolo_publicznosc.grid(row=0, column=2)

# Utworzenie pól wygranych
wygrane = tk.Canvas(root, width=800, height=600, bg="blue", highlightthickness=0)
wygrane.grid(row=1, column=3, columnspan=2)

wygrane1  = tk.Label(wygrane, text="1 000 000", font=("Arial", 20), bg="lightblue")
wygrane1.grid(row=0, column=0)

wygrane2  = tk.Label(wygrane, text="500 000", font=("Arial", 20), bg="lightblue")
wygrane2.grid(row=1, column=0)

wygrane3  = tk.Label(wygrane, text="250 000", font=("Arial", 20), bg="lightblue")
wygrane3.grid(row=2, column=0)

wygrane4  = tk.Label(wygrane, text="125 000", font=("Arial", 20), bg="lightblue")
wygrane4.grid(row=3, column=0)

wygrane5  = tk.Label(wygrane, text="75 000", font=("Arial", 20), bg="lightblue")
wygrane5.grid(row=4, column=0)

wygrane6  = tk.Label(wygrane, text="40 000", font=("Arial", 20), bg="lightblue")
wygrane6.grid(row=5, column=0)

wygrane7  = tk.Label(wygrane, text="20 000", font=("Arial", 20), bg="lightblue")
wygrane7.grid(row=6, column=0)

wygrane8  = tk.Label(wygrane, text="10 000", font=("Arial", 20), bg="lightblue")
wygrane8.grid(row=7, column=0)

wygrane9  = tk.Label(wygrane, text="5 000", font=("Arial", 20), bg="lightblue")
wygrane9.grid(row=8, column=0)

wygrane10  = tk.Label(wygrane, text="2 000", font=("Arial", 20), bg="lightblue")
wygrane10.grid(row=9, column=0)

wygrane11  = tk.Label(wygrane, text="1 000", font=("Arial", 20), bg="lightblue")
wygrane11.grid(row=10, column=0)

wygrane12  = tk.Label(wygrane, text="500", font=("Arial", 20), bg="lightblue")
wygrane12.grid(row=11, column=0)

# Utworzenie  zmiennej odpowiadającaej za mierzenie czasu
Czas = tk.Label(root, text="Czas: 0s", font=("Arial", 20), bg="blue", fg="white")
Czas.grid(row=2, column=0, columnspan=2)

# Rozmieszczenie pól wygranych
wygrane = {
    0 : wygrane12,
    1 : wygrane11,
    2 : wygrane10,
    3 : wygrane9,
    4 : wygrane8,
    5 : wygrane7,
    6 : wygrane6,
    7 : wygrane5,
    8 : wygrane4,
    9 : wygrane3,
    10 : wygrane2,
    11 : wygrane1
}

# Napisy końcowe 
tekst_credits = """
Głowny programista: \nJan Jakowicki \n\n
Baza Danych: \n Anastasiia Bondarenko \n\n
Grafiki: \n Jakub Dratwa, Bastian Wiciński \n\n
Dokumentacja README: \n Gerard Gondek \n\n
Dokumentacja programu (komentarze): \n Bastian Wiciński \n\n
Testowanie programu: \n Jakub Dratwa 
"""
credits = tk.Button(root, text="Credits", font=("Arial", 20), bg="blue", fg="white", command=lambda: messagebox.showinfo("Credits", tekst_credits))
credits.grid(row=3, column=3, columnspan=2)


# Zasady Gry
tekst_zasady = """
Zasady gry są proste. \n
Masz 12 pytań, na które musisz odpowiedzieć. \n
Na każde pytanie masz 30 sekund. \n
Błędna odpowiedź kończy grę. \n
Możesz skorzystać z 3 kół ratunkowych: \n
- pół na pół: Usuwa połowe błędnych odpowiedzi \n
- telefon do przyjaciela: Przyjaciel mówi ci poprawną odpowiedź \n
- publiczność: Otrzymujesz wykres pokazujący odpowiedzi od publiczności \n
Powodzenia!
"""

zasady = tk.Button(root, text="Zasady", font=("Arial", 20), bg="blue", fg="white", command=lambda: messagebox.showinfo("Zasady", tekst_zasady))
zasady.grid(row=2, column=3, columnspan=2)

# Start programu
reset()
root.after(1000, update)
root.mainloop()