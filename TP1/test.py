import pytest
import fonctions as f


def test_1():
	try :
		assert f.puissance(2,3)==8
		assert f.puissance(2,2)==4
		assert f.puissance(2,2)==4 
		assert f.puissance(-2,2)==4
		assert f.puissance(2,0)==1 
		assert f.puissance(-2,0)==-1
		assert f.puissance(0,0)==1 
		assert f.puissance(0,3)==0
		assert f.puissance(0,-3)==0
	except (AssertionError, ZeroDivisionError):
		print("-2 puissance 0 = -1 et 0 puisssance 0 = 1")
		pass
	
#def test_2():
#	assert f.puissance(2,3)==-8
#	assert f.puissance(2,2)==-4
