# encoding: utf-8
require "digest"

puts "Введите слово"

word = gets.strip

puts "Каким способом зашифровать
     1. MD5
     2. SHA1"

id = gets.strip.to_i

if id == 1
  code = Digest::SHA1.hexdigest word
  puts code
elsif id == 2
  code = Digest::MD5.hexdigest word
  puts code
else
  puts "Введите метод шифрования"
end

