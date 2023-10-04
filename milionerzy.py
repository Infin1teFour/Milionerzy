import tkinter as tk
from tkinter import messagebox
from PIL import ImageTk, Image
import mysql.connector
import random as r

# Connect to the database
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="milionerzy"
)

# Create a cursor object
cursor = conn.cursor()

# Execute a SELECT statement
cursor.execute('SELECT * FROM pytania')

# Fetch the results
results = cursor.fetchall()
results = r.sample(results, 12)


root = tk.Tk()
root.title("Milionerzy")
root.resizable(0, 0)
root.configure(background="blue")

nr_pytania = 0
poprawna = ""
A = ""
B = ""
C = ""
D = ""


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
        print(poprawna)
        print(A)
        print(B)
        print(C)
        print(D)
        print("\n")
        wygrane[nr_pytania].config(fg="yellow")
        if nr_pytania > 0:
            wygrane[nr_pytania-1].config(fg="black")

        nr_pytania += 1
    else:
        messagebox.showinfo("Koniec gry", "Wygrałeś 1 000 000")
        root.destroy()


def sprA():
    global poprawna, A
    if poprawna == A:
        print("Dobrze")
        pytania()
    else:
        print("Źle")
        messagebox.showerror("Koniec gry", "Przegrałeś")
        root.destroy()

def sprB():
    global poprawna, B
    if poprawna == B:
        print("Dobrze")
        pytania()
    else:
        print("Źle")
        messagebox.showerror("Koniec gry", "Przegrałeś")
        root.destroy()

def sprC():
    global poprawna, C
    if poprawna == C:
        print("Dobrze")
        pytania()
    else:
        print("Źle")
        messagebox.showerror("Koniec gry", "Przegrałeś")
        root.destroy()

def sprD():
    global poprawna, D
    if poprawna == D:
        print("Dobrze")
        pytania()
    else:
        print("Źle")
        messagebox.showerror("Koniec gry", "Przegrałeś")
        root.destroy()


#Pytanie
pytanie = tk.Canvas(root, width=800, height=600, bg="blue")
pytanie.grid(row=0, column=0, columnspan=2)

pytanie_tekst = tk.Label(pytanie, text="", font=("Arial", 20), bg="lightblue")
pytanie_tekst.grid(row=0, column=0, columnspan=2)


# Odpowiedzi
przyciski = tk.Canvas(root, width=800, height=600, bg="blue")
przyciski.grid(row=1, column=0, columnspan=3)

przycisk_a = tk.Button(przyciski, text="",width=40, height=5, bg="lightblue", command=sprA)
przycisk_a.grid(row=1, column=0)

przycisk_b = tk.Button(przyciski, text="", width=40, height=5, bg="lightblue", command=sprB)
przycisk_b.grid(row=1, column=1)

przycisk_c = tk.Button(przyciski, text="", width=40, height=5, bg="lightblue", command=sprC)
przycisk_c.grid(row=2, column=0)

przycisk_d = tk.Button(przyciski, text="", width=40, height=5, bg="lightblue", command=sprD)
przycisk_d.grid(row=2, column=1)

# Koła ratunkowe
kola = tk.Canvas(root, width=800, height=600, bg="blue")
kola.grid(row=0, column=3, columnspan=2)

kolo_pol_na_pol = tk.Button(kola, text="50na50", width=10, height=2)
kolo_pol_na_pol.grid(row=0, column=0)

kolo_telefon = tk.Button(kola, text="Telefon do przyjaciela",width=18, height=2)
kolo_telefon.grid(row=0, column=1)

kolo_publicznosc = tk.Button(kola, text="Publiczność", width=10, height=2)
kolo_publicznosc.grid(row=0, column=2)

# Wygrane
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

pytania()

tk.mainloop()