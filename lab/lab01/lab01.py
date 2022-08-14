from pickle import TRUE
import string
from turtle import Turtle


def falling(n, k):
    """Compute the falling factorial of n to depth k.

    >>> falling(6, 3)  # 6 * 5 * 4
    120
    >>> falling(4, 3)  # 4 * 3 * 2
    24
    >>> falling(4, 1)  # 4
    4
    >>> falling(4, 0)
    1
    """
    "*** YOUR CODE HERE ***"
    if (k == 0):
        return 1
    if (k == 1):
        return n
    while (k > 0):
        return n * falling(n - 1, k - 1)


def sum_digits(y):
    """Sum all the digits of y.

    >>> sum_digits(10) # 1 + 0 = 1
    1
    >>> sum_digits(4224) # 4 + 2 + 2 + 4 = 12
    12
    >>> sum_digits(1234567890)
    45
    >>> a = sum_digits(123) # make sure that you are using return rather than print
    >>> a
    6
    """
    "*** YOUR CODE HERE ***"
    string = str(y)
    sum = 0
    for i in range(len(string)):
        sum += int(string[i])
    return sum
    # total = 0          # The answer is more efficient
    # while y > 0:
    #     total, y = total + y % 10, y // 10
    # return total


def double_eights(n):
    """Return true if n has two eights in a row.
    >>> double_eights(8)
    False
    >>> double_eights(88)
    True
    >>> double_eights(2882)
    True
    >>> double_eights(880088)
    True
    >>> double_eights(12345)
    False
    >>> double_eights(80808080)
    False
    """
    "*** YOUR CODE HERE ***"
    pre = -1
    while n > 0:
        if (pre == n % 10 and pre == 8):
            return True
        pre, n = n % 10, n // 10
    return False
