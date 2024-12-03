# test_app.py
from app import add, subtract

def test_add():
    assert add(2, 3) == 5
    assert add(0, 0) == 0
    assert add(-1, 1) == 0

def test_subtract():
    assert subtract(10, 5) == 5
    assert subtract(0, 1) == -1
    assert subtract(7, 3) == 4