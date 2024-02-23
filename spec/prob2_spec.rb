require 'prob2'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      @todo_list = TodoList.new
      @todo_list.add('test')
      expect(@todo_list.todos[-1]).to eq('test')
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      @todo_list = TodoList.new
      @todo_list.add('test')
      @todo_list.remove('test')
      expect(@todo_list.todos).to eq([])
    end
  end

  describe "#todos" do
    it "returns all todos" do
      @todo_list = TodoList.new
      @todo_list.add('test1')
      @todo_list.add('test2')
      expect(@todo_list.todos).to eq(['test1', 'test2'])
    end
  end
end
