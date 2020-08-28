import sys
import flask
print(f"sys: {sys.version}")
print(f"flask:  {flask.__version__}")
print()

while True:
    n = input("Name?")
    print(f"Hello, {n}")
    print()