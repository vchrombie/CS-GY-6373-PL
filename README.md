# CS-GY-6373-PL

Course Repository for CS GY 6373: Programming Languages

### Assignment 1

Sebesta Chapter 3

Problem Set: 3, 4, 6, 7, 8, 11, 12, 13, 14

### Assignment 2

Lambda Calculus

For the following forms apply β-reduction and α-substitution to reduce to lowest form. Indicate at each step the rule you are applying.

1. (λx.x)( λx.x )
2. (λx.x x) (λx. λy.x x)
3. ((λx.(x y))(λz.z))
4. (λz.z) (λy.y y) (λx.x a)
5. (λz.z) (λz.z z) (λz.z y)
6. (λx.λy.x y y) (λa.a) b
7. (λx.x x) (λy.y x) z
8. (λx. (λy. (x y)) y) z
9. ((λx.x x) (λy.y)) (λy.y)
10. (((λx. λy.(x y))(λy.y)) w)

### Assignment 3

Scheme

1. Define a scheme function (rev list) that reverses the top level items in a list, i.e. `(rev '( 1 2 3 ())) -> '(() 3 2 1)`, using car, cdr, cons, cond, boolean predicates, etc. - DO NOT USE reverse
2. Define a scheme function (rev rev-list list) that reverses the top level items in a list this time using tail-recursion. i.e. `(rev nil '( 1 2 3 ())) -> '(() 3 2 1)`, using car, cdr, cons, cond, boolean predicates, etc. - DO NOT USE reverse

### Assignment 4

Scheme Strings

Given a string of N characters represented as A = A1........An. Print the size of the largest substring of A such that no two characters in the substring are same (or all characters are distinct).

```scm
(define uniqueSubstring...)
```

1. Constraints - Not allowed to use library functions. This means no import statement.
2. Input to function `uniqueSubstring` - A string consisting of lower case ASCII letters.
3. Output of function - Length of the largest substring containing distinct letters.
4. Sample test case - Calling `uniqueSubstring abaacb` outputs 3 which is the length of the substring “acb”.

### Assignment 5

Haskell

In  Haskell solve each using recursion. i.e. no length functions, etc.
1. Write a program that finds the maximum of a list of numbers. Assume there are no duplicates in the list.
2. Write a program that succeeds if the intersection of two given list parameters is empty.
3. Write a program that returns a list containing the union of the elements of two given lists. Again, assume there are no duplicates in each list (although the same element might be in both lists).
4. Write a program that returns the final element of a list.
5. Write a function that takes two lists of integers and returns a list containing tuples with corresponding elements from both the lists. For example - `f ([1, 2, 3], [4, 5, 6]) -> [(1, 4), (1,5), (1,6), (2, 4), (2, 5), (2, 6), (3, 4), (3 ,5), (3, 6)]`. If either list is null, the result is null. The lists do not have to be the same length.

### Assignment 6

Haskell 2

Given a string of N characters represented as A = A1........An. Output the largest substring of A such that no two characters in the substring are the same (or all characters are distinct).

```hs
(define uniqueSubstring...)
```

1. Constraints - Not allowed to use library functions.
2. Input to function `uniqueSubstring` - A string consisting of lower case ASCII letters.
3. Output of function - The largest substring containing distinct letters.
4. Sample test case - Calling `uniqueSubstring "abaacb"` outputs  the substring “acb”.

### Assignment 7

Haskell Monads

For the following function use `Monad.Control.State` to encode it. Show your output from evaluation.

```
fun n = fun n-1 + fun n-2 + fun n-3

fun 0 = 0
fun 1 = 1
fun 2 = 2
fun 3 = 3
fun 4 = 6
fun 5 = 11
```

### Assignment 8

Julia

Write the following programs in Julia. Assume there are no duplicates in the list of numbers.
1. Write a program to find all pairs of numbers in a given list which add up to a given sum eg.
    Input: a list of numbers and a sum
    Output: The list of pairs with the respective sum
    Example:
    list = (1,3,8,12,7,11,9,4,2,10,5)
    sum = 12
    pairs: (1,11), (2,10), (3,9), (4,8)
2. Extend your program to include all possible sums
    Input: a list of numbers
    Output: a list of tuples where each tuple is the sum followed by the list of pairs.
    Example:
    sums = 5, 6, 7, 8, ..., 23
    list = (1,3,8,12,7,11,9,4,2,10,5)
    tuples: [(12,[(1,11),(2,10),(3,9)]), (11,[(3,8),...]), ...]

### Assignment 9

Julia Macro

Define a Julia macro `func_show` that when passed a function definition will print out the name of the function and the list of arguments.

Example:
```
julia> @func_show function myfunc(x, y, z) x+y+z end
myfunc
```

### Assignment 10

Prolog

1. Write a program that finds the maximum  number in a simple list of numbers.
2. Write a program that succeeds if the intersection of two given lists is empty.
3. Write a program that returns a list containing the union of the elements of two given lists. Assume each list represents sets (i.e. unique elements) and the union returns unique elements.
4. Write a program that returns the final element of a list

### Assignment 11

Parameter Passing

Consider the following program written in C syntax:
```c
void swap(int a, int b) {
    int temp;
    temp = a;
    a = b;
    b = temp;
}
void main() {
    int value = 2, list[5] = {1, 3, 5, 7, 9}; swap(value, list[0]);
    swap(list[0], list[1]);
    swap(value, list[value]);
}
```

For each of the following parameter-passing methods, what are all of the values of the variables value and list after each of the three calls to swap?
- Passed by value
- Passed by reference
- Passed by value-result

Present your answer in a table with the following \
columns: value, list[0], list[1], list[2], list[3], list[4] \
rows: a, b, c
