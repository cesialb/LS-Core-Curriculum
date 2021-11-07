flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    p index
  end
end

# better solution
p flintstones.index {|name| name[0, 2] == "Be"}

