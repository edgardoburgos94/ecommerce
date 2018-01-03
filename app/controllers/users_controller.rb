class UsersController < ApplicationController
  def edit
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_to user_list_path, notice: "Usuario eliminado"
    end
  end
end
