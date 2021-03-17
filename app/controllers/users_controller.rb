class UsersController < ApplicationController

  def new

  end

  def index
    @users = User.all
  end

  #def team
  #  @users = User.all
  #end

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

  # randomly generate a team
  def team
    num_selected = 0
    @selected_players = []
    while num_selected < 11
      max_id = User.order(id: :desc).limit(1).pluck(:id).first
      random_player = User.find_by('id > ?', rand(max_id))
      # check if all the values are filled in, if not, select another player.
      valid_player = true
      valid_player = ((random_player.player == "") or valid_player)
      valid_player = ((random_player.team == "") or valid_player)
      valid_player = ((random_player.position == "") or valid_player)

      if valid_player
        @selected_players.append(random_player)
        num_selected += 1
      end
    end

    print(@selected_players)
    @selected_players
  end

end
