class UsersController < ApplicationController
    def home
        render "home/home"
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)

        if @user.save
            session[:user_id] =  @user.id
            redirect_to "/users/#{@user.id}" #user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find_by_id(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password)
    end
end
