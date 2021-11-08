flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  if name[0, 2] == "Be"
    index
    break
  end
end

# better solution
flintstones.index {|name| name[0, 2] == "Be"}
