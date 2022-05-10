class UsergamesController < ApplicationController
  skip_before_action :authorize, :only => [:index, :create, :topflap, :topsnake, :topflapscores]

  # GET /usergames
  def index
    @usergames = Usergame.all

    render json: @usergames
  end


  # GET /usergames/1
  def show
    render json: @usergame
  end

  # POST /usergames
  def create
    @usergame = Usergame.new(usergame_params)

    if @usergame.save
      render json: @usergame, status: :created, location: @usergame
    else
      render json: @usergame.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usergames/1
  def update
    if @usergame.update(usergame_params)
      render json: @usergame
    else
      render json: @usergame.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usergames/1
  def destroy
    @usergame.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usergame
      @usergame = Usergame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usergame_params
      params.fetch(:usergame, {})
    end
end
