from datetime import date
import uuid
from robot.api import logger


def pause_exec(message="Yes/No."):
    logger.console(message)
    a = input("status ")
    if a == "yes":
        print("pass")
    else:
        print("fail")
        logger.console("Reason?")
        b = input("Reason: ")
        print(b)


def Adding(int1: int, int2: int):
    int3 = int1 + int2
    print("Sum of", int1, "and", int2, "is", int3)


def current_date():
    d = date.today()
    return d


def verifing(int: int):
    if int > 0:
        print("Yes it's a positive number")
    else:
        print("No its not a positive number")


def uniqid():
    print(uuid.uuid4())
