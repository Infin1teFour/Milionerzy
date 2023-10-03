import tkinter as tk
from PIL import ImageTk, Image

root = tk.Tk()
root.title("Milionerzy")
root.resizable(0, 0)

#odp = ImageTk.PhotoImage(file = "grafika\odp.png")
polnapol = ImageTk.PhotoImage(file = "grafika\polnapol.png")
tel = ImageTk.PhotoImage(file = "grafika\telefon.jpg")

# Odpowiedzi
przyciski = tk.Canvas(root, width=800, height=600)
przyciski.grid(row=1, column=0, columnspan=3)

przycisk_a = tk.Button(przyciski, text="A", image="")
przycisk_a.grid(row=0, column=0)

przycisk_b = tk.Button(przyciski, text="B", width=10, height=2)
przycisk_b.grid(row=0, column=1)

przycisk_c = tk.Button(przyciski, text="C", width=10, height=2)
przycisk_c.grid(row=1, column=0)

przycisk_d = tk.Button(przyciski, text="D", width=10, height=2)
przycisk_d.grid(row=1, column=1)

# Koła ratunkowe
kola = tk.Canvas(root, width=800, height=600)
kola.grid(row=1, column=3, columnspan=2)

kolo_pola = tk.Button(kola, text="Pola", width=10, height=2)
kolo_pola.grid(row=0, column=0)

kolo_pol_na_pol = tk.Button(kola, image=polnapol, width=10, height=2)
kolo_pol_na_pol.grid(row=1, column=0)

kolo_telefon = tk.Button(kola, text="Telefon", width=10, height=2)
kolo_telefon.grid(row=2, column=0)

kolo_publicznosc = tk.Button(kola, text="Publiczność", width=10, height=2)
kolo_publicznosc.grid(row=3, column=0)

tk.mainloop()