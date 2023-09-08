import fonctions as f

print("hello world")

while True:
	a= int(input("saisir une valeur de a : "))
	b= int(input("saisir une valeur de b : "))
#	d=a**2
#	print(a,"au carré = ", d)
	res = f.puissance(a,b)
	print(res)
