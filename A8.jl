# Write a program to find all pairs of numbers in a given list which add up to a given sum 
# Input: list = (1,3,8,12,7,11,9,4,2,10,5) and sum = 12
# Output: pairs = (1,11), (2,10), (3,9), (4,8)

function find_pairs(list, sum)
    pairs = []
    for i in 1:length(list)
        for j in i+1:length(list)
            if list[i] + list[j] == sum
                push!(pairs, (list[i], list[j]))
            end
        end
    end
    return pairs
end

println(find_pairs([1,3,8,12,7,11,9,4,2,10,5], 12))

# Output:
# Any[(1, 11), (3, 9), (8, 4), (7, 5), (2, 10)]

###############################################

# Extend your program to include all possible sums
# eg. Sums = 5, 6, 7, 8, ..., 23
# Input: A list of numbers
# Output: a list of tuples where each tuple is the sum followed by the list of pairs e.g. [(12,[(1,11),(2,10),(3,9)), (11, [(3,8)]]

function find_all_pairs(list)
    all_pairs = []
    for sum in 5:23
        pairs = find_pairs(list, sum)
        if length(pairs) > 0
            push!(all_pairs, (sum, pairs))
        end
    end
    return all_pairs
end

println(find_all_pairs([1,3,8,12,7,11,9,4,2,10,5]))

# Output:
# Any[(5, Any[(1, 4), (3, 2)]), (6, Any[(1, 5), (4, 2)]), (7, Any[(3, 4), (2, 5)]), (8, Any[(1, 7), (3, 5)]), (9, Any[(1, 8), (7, 2), (4, 5)]), (10, Any[(1, 9), (3, 7), (8, 2)]), (11, Any[(1, 10), (3, 8), (7, 4), (9, 2)]), (12, Any[(1, 11), (3, 9), (8, 4), (7, 5), (2, 10)]), (13, Any[(1, 12), (3, 10), (8, 5), (11, 2), (9, 4)]), (14, Any[(3, 11), (12, 2), (9, 5), (4, 10)]), (15, Any[(3, 12), (8, 7), (11, 4), (10, 5)]), (16, Any[(12, 4), (7, 9), (11, 5)]), (17, Any[(8, 9), (12, 5), (7, 10)]), (18, Any[(8, 10), (7, 11)]), (19, Any[(8, 11), (12, 7), (9, 10)]), (20, Any[(8, 12), (11, 9)]), (21, Any[(12, 9), (11, 10)]), (22, Any[(12, 10)]), (23, Any[(12, 11)])]
