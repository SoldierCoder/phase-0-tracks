class TodoList
  @todo = []
  def initialize(some_array)
    @todo =   some_array
  end

  def get_items
    @todo
  end
  def add_item(item)
    @todo.push(item)
  end
  def delete_item(item)
    idx = @todo.index(item)
    @todo.delete_at(idx)
  end
  def get_item(item_index)
    @todo[item_index]
  end

end
