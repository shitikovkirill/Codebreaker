$view_vars

puts 'puts 4 number for break code:'
number = gets.strip

$return_vars = { action: 'checkcode', number: number }
$return_vars.merge!($view_vars)