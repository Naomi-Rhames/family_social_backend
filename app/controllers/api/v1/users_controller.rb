module Api
    module V1
        class  Api::V1::UsersController < ApplicationController 

            def create
                user = User.new(user_params)
                if user.save
                    render_token(user)
                else
                render json: {error: user.errors.full_messages},  status: 403
                end
            end
        

            def index
                user = User.all
                render json: UserSerializer.new(user)
            end



            def show

            end

            private

            def user_params
                params.permit(:email, :username, :bio, :password)
            end
        end
    end
end
 