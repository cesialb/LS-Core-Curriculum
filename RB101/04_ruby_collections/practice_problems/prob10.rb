munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.keys.each do |key|
  munsters[key]["age_group"] = "kid" if munsters[key]["age"] >= 0 && munsters[key]["age"] <= 17
  munsters[key]["age_group"] = "adult" if munsters[key]["age"] >= 18 && munsters[key]["age"] <= 64
  munsters[key]["age_group"] = "senior" if munsters[key]["age"] >= 65
end

# better solution
munsters.each do |name, details|
  case details["age"]
  when 0..18
    details["age_group"] = "kid"
  when 18..65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munsters