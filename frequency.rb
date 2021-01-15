require 'byebug'

# create array with random numbers
# puts arr
# print arr

def frequency_counter(arr)
  highest_freq = 1
  highest_freq_num = 1
  hashh = {}

  arr.each { |element| hashh[element] = hashh.key?(element) ? hashh[element] + 1 : 1 }

  hashh.each do |key, value|
    next if value < highest_freq

    highest_freq_num = key
    highest_freq = value
  end

  highest_freq_num
end

arr = Array.new(10) { rand(0..10) }

puts arr
puts '----'
puts frequency_counter(arr)
