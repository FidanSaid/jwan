class JwansController < ApplicationController
  before_action :set_jwan, only: [:show, :edit, :update, :destroy]

  # GET /jwans
  # GET /jwans.json
  def index
    @jwans = Jwan.all
  end

  # GET /jwans/1
  # GET /jwans/1.json
  def show
  end

  # GET /jwans/new
  def new
    @jwan = Jwan.new
  end

  # GET /jwans/1/edit
  def edit
  end

  # POST /jwans
  # POST /jwans.json
  def create
    @jwan = Jwan.new(jwan_params)

    respond_to do |format|
      if @jwan.save
        format.html { redirect_to @jwan, notice: 'Jwan was successfully created.' }
        format.json { render :show, status: :created, location: @jwan }
      else
        format.html { render :new }
        format.json { render json: @jwan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jwans/1
  # PATCH/PUT /jwans/1.json
  def update
    respond_to do |format|
      if @jwan.update(jwan_params)
        format.html { redirect_to @jwan, notice: 'Jwan was successfully updated.' }
        format.json { render :show, status: :ok, location: @jwan }
      else
        format.html { render :edit }
        format.json { render json: @jwan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jwans/1
  # DELETE /jwans/1.json
  def destroy
    @jwan.destroy
    respond_to do |format|
      format.html { redirect_to jwans_url, notice: 'Jwan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jwan
      @jwan = Jwan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jwan_params
      params.fetch(:jwan, {})
    end
end
