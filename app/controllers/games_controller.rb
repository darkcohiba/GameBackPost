class GamesController < ApplicationController
  skip_before_action :authorize, :only => [:index, :create, :topflap, :topsnake]
  

  # GET /top flappy
  def topflap
    games = Game.where("game = ? ", "Flappy Bird").order(score: :desc).limit(5)

    render json: games
  end

  # GET /top snake
  def topsnake
    games = Game.where("game = ? ", "Snake").order(score: :desc).limit(5)

    render json: games
  end

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  # GET /games/1
  def show
    render json: @game
  end

  # POST /games
  def create
    @game = Game.new(game_params, session[:current_user])

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.permit(:game, :score)
    end
end
