class TodosController < ApplicationController
    before_action :authenticate
    def index
        # @todos = Todo.where(email: current_email)
        @todos = current_user.todos
    end

    def new
        @todo = Todo.new
    end

    def create
        current_user.todos.create(todo_params)
        redirect_to todos_path
        # todo = Todo.create(todo_params.merge(email: current_email))
    end

    private

    def todo_params
        params.require(:todo).permit(:title)
    end


end