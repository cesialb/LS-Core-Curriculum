flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}

flintstones.each_with_index do |key, index|
  hash[key] = index
end

p hash