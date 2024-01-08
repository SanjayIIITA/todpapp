class TodoappsController < ApplicationController
    protect_from_forgery with: :null_session

    def todolist
        @data = Todoapp.all 
        render json: @data
    end

    def new
        @data = Todoapp.new
    end

    def create
        @data = Todoapp.new(
            "add"=>params[:add],
            "email"=>params[:email],
            "mob_num"=>params[:mob_num]
        )
        if @data.save
            render json: params
        else
         @post.errors.full_messages
        end     
    end

    def update
        @data = Todoapp.find_by(id: params[:id])
        @data.update(
            "add"=>params[:add],
            "email"=>params[:email],
            "mob_num"=>params[:mob_num]

        )
        render json: @data
    end

    def destroy
        @data = Todoapp.find_by(id: params[:id])
        @data.delete
        render json: {}
    end
end
