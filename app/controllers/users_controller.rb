class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(1)
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render "edit"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(1)
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Usuario eliminado' }
      format.json { head :no_content }
    end
  end

  private
    def user_params
      params.require(:user).permit(:nombre, :correo)
    end

end
