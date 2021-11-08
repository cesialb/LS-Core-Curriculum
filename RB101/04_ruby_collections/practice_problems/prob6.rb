flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name| 
  name[0, 3]
end

# better solution
flintstones.map! {|name| name[0, 3]}

p flintstones