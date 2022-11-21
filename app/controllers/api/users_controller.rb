class Api::UsersController < ApplicationController
    protect_from_forgery with: :null_session
    def index
        users = User.all
        render json: users
    end

    def new 
    end

    def create
        user = User.new(user_params)
        if user.save 
            render json: user
        else 
            render json: user.errors
        end
    end
    
    def user_params
        params.permit(
            :name,
            :password,
            :username)
    end
end





#4 metodos principais, index, delete, show, edit 
#index = list dos elementos
#show = mostra um elemento especifico
#edit = atualizar um elemento especifico
#funçao comeca com def e termina com end
#params 