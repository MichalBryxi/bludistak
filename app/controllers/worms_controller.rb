class WormsController < ApplicationController
  before_action :set_worm, only: [:show, :edit, :update, :destroy]

  # GET /worms
  # GET /worms.json
  def index
    @worms = Worm.all
  end

  # GET /worms/1
  # GET /worms/1.json
  def show
  end

  # GET /worms/new
  def new
    @worm = Worm.new
  end

  # GET /worms/1/edit
  def edit
  end

  # POST /worms
  # POST /worms.json
  def create
    @worm = Worm.new(worm_params)

    respond_to do |format|
      if @worm.save
        format.html { redirect_to @worm, notice: 'Worm was successfully created.' }
        format.json { render :show, status: :created, location: @worm }
      else
        format.html { render :new }
        format.json { render json: @worm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worms/1
  # PATCH/PUT /worms/1.json
  def update
    respond_to do |format|
      if @worm.update(worm_params)
        format.html { redirect_to @worm, notice: 'Worm was successfully updated.' }
        format.json { render :show, status: :ok, location: @worm }
      else
        format.html { render :edit }
        format.json { render json: @worm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worms/1
  # DELETE /worms/1.json
  def destroy
    @worm.destroy
    respond_to do |format|
      format.html { redirect_to worms_url, notice: 'Worm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worm
      @worm = Worm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worm_params
      params.require(:worm).permit(:name, :description, :project_id)
    end
end
