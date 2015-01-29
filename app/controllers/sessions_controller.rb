class SessionsController < ApplicationController
  def sign_in
    user = User.find_by(email: params[:email].downcase)
      if user && user.authenticate(params[:password])
        sign_in(user)
        redirect_back_or_to(root_path)
      else
      render :new
     end
   end

  def sign_out
  end
end
