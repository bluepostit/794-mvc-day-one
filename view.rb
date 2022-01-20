class View
  def ask_user_for_name
    puts "Please enter the name of the task"
    gets.chomp
  end

  def ask_user_for_index
    puts "Please enter the number of the task"
    gets.chomp.to_i - 1
  end

  def list(tasks)
    tasks.each_with_index do |task, index|
      box = task.done? ? '[X]' : '[ ]'
      puts "#{index + 1} #{box} #{task.name}"
    end
  end
end
