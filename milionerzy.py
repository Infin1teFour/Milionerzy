import tkinter as tk
from PIL import ImageTk, Image
import mysql.connector

import mysql.connector

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

# Print the results
for row in results:
    print(row)

root = tk.Tk()
root.title("Milionerzy")
root.resizable(0, 0)
root.configure(background="blue")

telefon = ImageTk.PhotoImage(Image.open("grafika\ktelefon.png"))

#Pytanie
pytanie = tk.Canvas(root, width=800, height=600, bg="blue")
pytanie.grid(row=0, column=0, columnspan=2)

pytanie_tekst = tk.Label(pytanie, text="Pytanie", font=("Arial", 20), bg="lightblue")
pytanie_tekst.grid(row=0, column=0, columnspan=2)

# Odpowiedzi
przyciski = tk.Canvas(root, width=800, height=600, bg="blue")
przyciski.grid(row=1, column=0, columnspan=3)

przycisk_a = tk.Button(przyciski, text="A",width=40, height=5, bg="lightblue")
przycisk_a.grid(row=1, column=0)

przycisk_b = tk.Button(przyciski, text="B", width=40, height=5, bg="lightblue")
przycisk_b.grid(row=1, column=1)

przycisk_c = tk.Button(przyciski, text="C", width=40, height=5, bg="lightblue")
przycisk_c.grid(row=2, column=0)

przycisk_d = tk.Button(przyciski, text="D", width=40, height=5, bg="lightblue")
przycisk_d.grid(row=2, column=1)

# Koła ratunkowe
kola = tk.Canvas(root, width=800, height=600, bg="blue")
kola.grid(row=0, column=3, columnspan=2)

kolo_pol_na_pol = tk.Button(kola, text="50na50", width=10, height=2)
kolo_pol_na_pol.grid(row=0, column=0)

kolo_telefon = tk.Button(kola, image=telefon, borderwidth=0)
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

tk.mainloop()