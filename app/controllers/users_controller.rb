class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params.require(:user).permit(:title, :startDate, :endDate, :allDay, :scheduleMemo))
     if @user.save
      flash[:notice] = "予定を新規追加しました"
      redirect_to :users
     else
      flash[:alert] = "予定の新規追加に失敗しました"
      render "new"
     end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
     if @user.update(params.require(:user).permit(:title, :startDate, :endDate, :allDay, :scheduleMemo))
      flash[:notice] = "予定を更新しました"
      redirect_to :users
     else
      flash[:alert] = "予定の更新に失敗しました"
      render "edit"
     end
  end
  
  def destroy
    @user = User.find(params[:id])
     @user.destroy
     flash[:notice] = "予定を削除しました"
     redirect_to :users
  end
  
end
