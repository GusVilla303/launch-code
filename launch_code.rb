#IntegerComplement
#binary complement means transpose 0's and 1's. e.g. ("101" complement is "010")

#take n and convert it to binary
#take binary find its complement in binary form
#take binary complement and convert it to new decimal


def IntegerComplement(n)

  complements = {
                  '0' => '1',  # => "1"
                  '1' => '0'   # => "0"
                }              # => {"0"=>"1", "1"=>"0"}

  binary = n.to_s(2)  # => "110010"

  #Solution 1: using Ruby's .to_i with base (2) method
  new_binary = ''                                         # => ""
  binary.chars.each { |e| new_binary << complements[e] }  # => ["1", "1", "0", "0", "1", "0"]
  new_binary                                              # => "001101"
  new_decimal = new_binary.to_i(2)                        # => 13


  #Solution 2: Evaluating complement's decimal manually
  comp_binary = []                                         # => []
  binary.chars.each { |e| comp_binary << complements[e] }  # => ["1", "1", "0", "0", "1", "0"]
  comp_binary                                              # => ["0", "0", "1", "1", "0", "1"]

  comps = []                                                                 # => []
  comp_binary.reverse.each_with_index { |e, i| comps << (e.to_i) * (2**i) }  # => ["1", "0", "1", "1", "0", "0"]
  comps                                                                      # => [1, 0, 4, 8, 0, 0]
  decimal_complement = comps.reduce(:+)                                      # => 13


  p new_decimal         # => 13
  p decimal_complement  # => 13

end

puts IntegerComplement(50)  # => nil

# >> 13
# >> 13
# >> 13
