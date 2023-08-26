class TodosController < ApplicationController
    def index
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def create
        redirect_to todos_path
        todo = Todo.create(title: params[:todo][:title])
    end

end