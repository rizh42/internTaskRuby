puts "Введите стоп, чтобы остановить цикл"
myHashTabel = Hash.new
total = 0
puts "Введите наименование, цену и кол-во товара:"
loop {
    input = gets
    words = input.split(" ")
    break if words[0] == "стоп"
    myHashTabel[words[0]] = {words[1] => words[2]}
    total += words[1].to_f * words[2].to_f
}
myHashTabel.each do |name, price|
    res = price.keys.first.to_f * price.values.first.to_f
    puts "Наименование: #{name}, цена: #{price.keys.first}, количество: #{price.values.first}, общая стоимость товара: #{res}"
end
puts total