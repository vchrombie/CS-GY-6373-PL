# Write a Julia macro that will print out the name of the function and the list of arguments when passed a function definition.
# for example, J @func_show function myfunc(x, y, z) x+y+z end
# arguments can appear as x::Int64

macro func_show(ex)
    if ex.head == :function
      lst = ex.args[1].args
      println("function name is ", lst[1])
      println("arguments are ", lst[2:end])
    end
end

@func_show function myfunc(x, y, z) x+y+z end

# Output:
# julia> @func_show function myfunc(x, y, z) x+y+z end
# function name is myfunc
# arguments are Any[:x, :y, :z]
