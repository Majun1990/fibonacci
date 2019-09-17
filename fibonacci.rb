module Fibonacci
    def iterative_fib(num)
        index = num
        fib1 = 0
        fib2 = 1
        index.times do 
            fibo = fib1 + fib2
            fib1 = fib2
            fib2 = fibo
        end
        return fibo
    end

    def recursive_fib(num)
        if num < 2
            num
        else
            fibo(num - 1) + fibo(num - 2)
        end
    end
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end