from functools import wraps

def memoize(function):
    memo = {}
    @wraps(function)
    def wrapper(*args):
        if args in memo:
            print "-"*10, memo
            return memo[args]
        else:
            rv = function(*args)
            memo[args] = rv
            print "*"*10, memo
            return rv
    return wrapper

@memoize
def fibonacci(n):
    if n < 2: return n
    return fibonacci(n - 1) + fibonacci(n - 2)

print fibonacci(10)
