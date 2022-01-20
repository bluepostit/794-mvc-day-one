class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    # loop forever!
    # show a menu to the user
    # get input from the user
    # act on the input
    loop do
      show_menu
      input = user_input
      dispatch(input)
    end
  end

  def show_menu
    puts '--- Task Manager ---'
    puts '1. Add a task'
    puts '2. Remove a task'
    puts '3. List all tasks'
  end

  def user_input
    puts 'Please choose the action'
    gets.chomp.to_i
  end

  def dispatch(input)
    case input
    when 1 then @controller.add_task
    when 2 then @controller.remove_task
    when 3 then @controller.list_tasks
    end
  end

end
