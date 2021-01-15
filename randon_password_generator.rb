require 'csv'

puts 'Please rovide the length for Password, Valid Range(10-25)'
password_length = gets.to_i
puts password_length
if password_length < 10
  password_length = 10
elsif password_length > 25
  password_length = 25
end
puts password_length

puts 'Please rovide the percentage of integers in password'
int_percentage = gets.to_i
puts int_percentage

puts 'Please rovide the percentage of alphabets in password'
alpha_percentage = gets.to_i
puts alpha_percentage

puts 'Please rovide the percentage of symbols in password'
symbol_percentage = gets.to_i
puts symbol_percentage

int_array = (Array.new((int_percentage * password_length) / 100) { rand(0..9) }).join
print int_array

alpha_array = (Array.new((alpha_percentage * password_length) / 100) { rand(65..122).chr }).join
print alpha_array

symbol_array = (Array.new((symbol_percentage * password_length) / 100) { rand(33..47).chr }).join
print symbol_array

puts 'newlline '
password_value = int_array + alpha_array + symbol_array
puts password_value

puts password_value.split('').shuffle.join

# CSV.open('myfile.csv', 'w') do |csv|
#   csv << password_value.split('').shuffle.join
# end

CSV.generate do |csv|
  csv << password_value.split('').shuffle.join
end
