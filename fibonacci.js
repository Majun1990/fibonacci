var readlineSync = require('readline-sync');

var digit = readlineSync.question("Enter number of digits: ");
var f1 = 0
var f2 = 1
var num = index
var iterative_fib = function(index) {
  index.times do;
  fibo = f1 + f2;
  f1 = f2;
  f2 = fibo; 
  end};
console.log(fibo);
  
iterative_fib();

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end