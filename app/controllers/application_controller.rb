class ApplicationController < ActionController::API

    def encode_token(user_id)
        JWT.endcode({user_id: user_id}, ENV["JWT_SECRET"])
    end



    private

end
