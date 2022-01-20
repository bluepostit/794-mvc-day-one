class Stack
  # State
  # - items
  # Behavior
  # - pop (remove the last one)
  # - push (add one on top)
  # - items
  # FILO

  attr_reader :items

  def initialize
    @items = []
  end

  def pop
    @items.delete_at(-1)
  end

  def push(item)
    @items << item
  end
end

plates = Stack.new
plates.push('dinner plate')
plates.push('dinner plate')
plates.push('side plate')

plates.items.each { |plate| puts "- #{plate}" }

puts '--- removing the last one ---'
plates.pop
plates.items.each { |plate| puts "- #{plate}" }
