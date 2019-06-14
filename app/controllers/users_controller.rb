class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def signin
        user = User.find_by(username: params[:username])
        if user and user.authenticate(params[:password])
            render json: {token: issue_token(id: user.id)}
        else
            render json: {error: "User/password combination is wrong"}, status: 404
        end
    end

    def validate
        token = request.headers["Authorization"]
        id = JWT.decode(token, secret)[0]['id']
        user = User.find(id)
        if user
            render json: {username:  user.username, userId: user.id}
        else
            render json: {error: 'Invalid id.'}, state: 404
        end
    end

    def create
        input = User.new(params.permit(:first_name, :last_name, :dob, :username, :password, :email))
        if(input.save)
            render json: {username:  input.username, input: user.id}
        else
            render json: {error: 'Invalid id.'}, state: 404
        end
    end
    def MyAirports
    user = get_current_user
    if user
      render json: user.airports
    else
      render json: {error: 'Invalid user.'}, status: 404
    end 
  end
    
    def show 
       @users = User.all
       render json: @users
    end 
    
    
end
