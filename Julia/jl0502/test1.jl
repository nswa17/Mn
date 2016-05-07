function fizzbuzz()
    for x in 1 : 100
        if x % 15 == 0
            print("FizzBuzz")
        elseif x % 3 == 0
            print("Fizz")
        elseif x % 5 == 0
            print("Buzz")
        else
            print(x)
        end
        print(" ")
    end
end

fizzbuzz()
