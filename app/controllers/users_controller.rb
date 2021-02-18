class UsersController < ApplicationController

  def new

  end

  def index
    @users = User.all
  end

  def add
    @user = User.new
  end


  # credit: https://codecabulary.launchacademy.com/learn-rails/writing-forms
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, alert: "Player created successfully."
    else
      redirect_to new_user_path, alert: "Error creating player."
    end
    puts(@user["player"])
  end


  def show
    @users = User.find(params[:id])
  end

  # credit: https://stackoverflow.com/questions/17450185/forbidden-attributes-error-in-rails-4-when-encountering-a-situation-where-one-wo
  def user_params
    params.require(:user).permit(:player, :team, :points, :cost, :position)
  end

end
