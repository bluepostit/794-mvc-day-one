require_relative 'view'
require_relative 'task'

class Controller
  # State
  # - repository
  # - view
  # Behavior
  # - add a task
  # - remove a task
  # - list all tasks
  # - mark a task as done

  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def add_task
    # ask user for the name of the task
    # create a new Task instance
    # add it to the repository
    name = @view.ask_user_for_name
    task = Task.new(name)
    @repository.add(task)
  end

  def list_tasks
    # get all tasks from repository
    # display them with the view
    tasks = @repository.tasks
    @view.list(tasks)
  end

  def remove_task
    # list the tasks
    # ask user to choose the index
    # tell repository to delete task at this index
    list_tasks
    index = @view.ask_user_for_index
    @repository.remove(index)
  end
end
