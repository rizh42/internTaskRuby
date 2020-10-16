puts "Введите коэффициенты уравнения:"
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = b**2 - 4 * a * c
if d > 0  
    print "Корни уравнения: "
    x1 = (-b + d**0.5) / (2 * a)
    x2 = (-b - d**0.5) / (2 * a)
    print "#{x1} и #{x2}"
elsif d == 0
    print "У уравнения один корень:"
    x = -b / (2 * a)
    print "#{x}"
else 
    print "У уравнения нет корней"
end