# encoding: utf-8
require "digest"

puts "Введите слово"

word = gets.strip

puts "Каким способом зашифровать
     1. MD5
     2. SHA1
     3. SHA2"

id = gets.strip.to_i

case id
when 1
  code = Digest::MD5.hexdigest word
  puts code
when 2
  code = Digest::SHA1.hexdigest word
  puts code
  when 3
    code = Digest::SHA2.hexdigest word
    puts code

else
  puts "Введите метод шифрования"
end

