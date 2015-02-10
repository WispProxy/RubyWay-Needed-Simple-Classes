require_relative '../Classes/profiller'
require_relative '../Classes/quick_sort'

=begin
= This constant for enable profiller
=end
$PROFILLER_ON = true

=begin
= Begin examples
=end
Profiller.profiler '1.500 doublings' do
  # BEGIN your code
  number = 1
  1_500.times do
    number = number + number
  end
  puts "#{number.to_s.length} digits"
  # END your code
end

Profiller.profiler '75.000 doublings' do
  # BEGIN your code
  number = 1
  75_000.times do
    number = number + number
  end
  puts "#{number.to_s.length} digits"
  # END your code
end



=begin
= This constant for enable qsort and qsort!
=end
$QUICKSORT_ON = true

=begin
= Begin examples
=end
test_array = [1, 2, 45, 67, 43, 21, 1, 23, 0, 34, 67, 8, 4, 3, 2, 12]

puts
puts test_array.qsort
puts
puts test_array

puts
puts test_array.qsort!
puts
puts test_array
