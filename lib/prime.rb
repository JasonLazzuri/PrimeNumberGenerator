class Fixnum
  define_method(:prime) do
    array = []
    prime = 2
    (2..self).each() do |i|
      array.push(i)
    end
    until prime == self
      array.each() do |number|
        if number % prime == 0 && number != prime
          array.delete(number)
        end
      end
      prime += 1
    end
    array
  end
end
