def has_a_c?(string)
  if /c/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_c?("cat")
has_a_c?("undercut")
has_a_c?("bedroom")
has_a_c?("dishwasher")