require_relative 'task'
require_relative 'repository'

# Create a new Task instance
learn_ruby = Task.new('learn Ruby')
puts "Is it done? #{learn_ruby.done?}"
learn_ruby.mark_as_done!
puts "Is it done? #{learn_ruby.done?}"

# Create a new Task instance
walk_dog = Task.new('walk dog')

# Create a new Repository instance.
# It will hold all our Task instances inside!
repo = Repository.new # repo.tasks => []
repo.add(learn_ruby) # repo.tasks => [1 task instance!]
repo.add(walk_dog) # repo.tasks => [2 task]

puts "All tasks"
repo.tasks.each do |task|
  box = task.done? ? '[X]' : '[ ]'
  puts "- #{box} #{task.name}"
end
