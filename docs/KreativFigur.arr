fir = square(100, "outline", "black")
tre = triangle(20, "solid", "red")
mn = rectangle(50, 10, "outline", "black")

samm = overlay-xy(fir, 20, 20, tre)
sam = overlay-xy(samm, 60, 20, tre)

smi = overlay-xy(sam, 25, 70, mn)
smi

