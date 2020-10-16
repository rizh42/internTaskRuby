require "matrix"

count = 0
a = []
puts "Введите матрицу через запятую:"
loop do 
    input = gets
    if input == "\n"
        puts "Подтвердите выход"
        input = gets
        break if input == "\n"
    end
    input.gsub!("\n", "")
    row = input.split(',')
    tmp = []
    count2 = 0
    row.each do |i| 
        tmp[count2] = i.to_i 
        count2 += 1 
    end
    count2 = 0
    a[count] = tmp
    count += 1
end


if a.size() != a[0].size()
    puts "Невозможно посчитать определитель, матрица не квадратная"
else puts "Определитель матрицы: #{Matrix.columns(a).transpose.determinant()}"
end