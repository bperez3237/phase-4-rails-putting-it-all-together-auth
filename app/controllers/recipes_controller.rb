class RecipesController < ApplicationController

    def index
        user = User.find_by(id: session[:user_id])
        # byebug
        if user
            render json: user.recipes, include: :user ,status: :created
        else
            render json: {error:"Not auth"}, status: :unauthorized
        end
    end

    # def create
    #     user = User.find_by(id: session[:user_id])
    #     if user
            
    #     end

    # end
end
