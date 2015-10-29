class PlayersController < ApplicationController

  def index
    @players = Player.all.order(:last_name)
  end

  def new
    @player = Player.new
  end

  def create
    Player.create(player_params)
    redirect_to(players_path)
  end

  def show
    @player = Player.find(params[:id])
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to(players_path)
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    player = Player.find(params[:id])
    player.update(player_params)
    redirect_to(players_path)
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :team_id, :position, :broomstick)
  end

end