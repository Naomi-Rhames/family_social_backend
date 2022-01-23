module Api
    module V1
        class UsersController < ApplicationController 
            def create
                user = User.new(user_params)
                if user.save
                    render :json user
                else
                render json: {error: user.errors.full_messages},  status: 403
                end
            end
        

            private

            def user_params
                params.permit(:email, :username, :bio, :password)
            end
        end
    end
end
