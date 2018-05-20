# Create a function that returns all odd numbers within a given range l..r

# Complete the function below.


def oddNumbers(l, r)
    odds = []
    (l..r).each {|n| odds << n if n.odd?}
    odds
end
