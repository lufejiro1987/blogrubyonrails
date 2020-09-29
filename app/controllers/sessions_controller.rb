class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(email: params[:user][:email])
        pass = BCrypt::Password.new(@user.password_digest)
                        
        if @user.present? && pass == params[:user][:password]
            session[:user_id] = @user.user_id
            redirecto_to root_path, notice: 'ha iniciado sesión'
        else
            redirect_to users_sign_in_path, notice: 'email o password invalido'
        end
    end


    def destroy
        reset_session
        redirect_to root_path, notice: 'sesion cerrada'
    end

end