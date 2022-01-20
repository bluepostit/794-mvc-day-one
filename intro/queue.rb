class Queue
  # State
  # - items
  # Behavior
  # - push (add on to the end)
  # - shift (take away from the front)

  def initialize
    @items = []
  end

  def push(item)
    @items << item
  end

  def shift
    @items.delete_at(0)
  end
end
