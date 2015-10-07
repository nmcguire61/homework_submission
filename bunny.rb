def students
  %w(Iwona Craig GraemeK Kathryn Kieran Peter Ere Chae Zsolt Simon Syed Neil GraemeS Keith Nevin)
end

def number_of_groups
  students.length / group_size
end

# bunny.rb:6:in `number_of_groups': undefined local variable or method `group_size' for main:Object (NameError)
  #from bunny.rb:21:in `<main>'
#really not sure why it isn't understanding what group_size is code seems to work fine in irb

puts 'inialising...'
puts 'Bunny grouping system activated!'

print "\nHow many whole people would you like in a group (1 - 15)?"
group_size = gets
number_of_groups.times.map { students.sample (group_size) }
  # I understand the different types of enumeration and their general purpose but I am sruggling with the basic set up of the code as well where and how to start. The trams tutorial completely passed me by today and I'm just staring at my computer getting frustrated so I've decided I'm going to get a run through of this tomorrow with someone and revise some basic ruby stuff again as I reckon I'm missing something 