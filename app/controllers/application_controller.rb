class ApplicationController < ActionController::API

    def encode_token(user_id)
        JWT.endcode({user_id: user_id}, ENV["JWT_SECRET"])
    end

    def render_token(user)
        render json: { user: ActiveModelSerializers::SerializableResource.new(user, serializer: UserSerializer), token: encode_token(user.id) }
    end


    private

    def fetch_token
        request.headers["Authorization"]
    end

    def decodeed_user_token
        JWT.decode(fetch_user_token, ENV["JWT_SECRET"])[0]
    end
    
end
