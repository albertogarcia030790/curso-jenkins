import pytest

def multiplicar(a,b):
    """Funcion que suma dos numeros"""
    return a * b

def test_suma():
    assert multiplicar(1, 2) == 2
    assert multiplicar(-1, 1) == -1
    assert multiplicar(-1, -1) == 1
    assert multiplicar(0, 100) == 0

