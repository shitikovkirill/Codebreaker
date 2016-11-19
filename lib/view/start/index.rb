begin
  puts 'puts 4 number for break code:'
  number = gets.strip
  number_valid = (number =~ /^[1-6]{4}$/).nil?

  if number_valid
    puts "Not valid number"
  end

end while number_valid

$return_vars = { action: 'checkcode', number: number }