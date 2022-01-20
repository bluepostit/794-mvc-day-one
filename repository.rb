class Repository
  # State
  # - tasks- an array of Task objects!
  # Behavior
  # - add a task
  # - remove a task
  # - get all tasks

  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
