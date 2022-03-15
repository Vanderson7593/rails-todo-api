module Api
  class TodosController < ApplicationController
    def index
      render :json => Todo.all
    end

    def create
      @todo = Todo.create(todo_params)
      render json: @todo
    end

    def update
      todo = Todo.find(params[:id])
      todo.update(todo_params)
      render json: todo
    end

    def destroy
      Todo.destroy(params[:id])
      render json: { message: 'Todo deleted successfully' }
    end

    private

    def todo_params
      params.require(:todo).permit(:title, :description, :done)
    end
  end
end
