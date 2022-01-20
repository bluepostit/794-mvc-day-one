class Task
  # State
  # - name
  # - done
  # Behavior
  # - mark as done
  # - name
  # - done?

  attr_reader :name

  def initialize(name)
    @name = name
    @done = false
  end

  def done?
    @done
  end

  def mark_as_done!
    @done = true
  end
end
