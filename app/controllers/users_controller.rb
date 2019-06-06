class UsersController < ApplicationController

    def index
    @users = User.all
    end

    def create
        input = User.new(params.permit(:username, :password))
        if(input.save)
            :ok
        else
            :bad_request
        end
    end
    
    def show 
       @users = User.all
       render json: @users
    end 
    
    
end
