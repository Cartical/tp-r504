import fonctions as f

print("hello world")

while True:
	a=int(input("Saisir un nombre au clavier"))
	b=a**2
	print("le carré de"+ a + "est"+ b)
	res = f.puissance(a,b)
	print(res)
