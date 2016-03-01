class VelasController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create, :update, :import, :destroy]
  before_action :set_vela, only: [:show, :edit, :update, :destroy]

  # GET /velas
  # GET /velas.json
  def index
    @velas = Vela.all
  end

  # GET /velas/1
  # GET /velas/1.json
  def show
  end

  # GET /velas/new
  def new
    @vela = Vela.new
  end

  # GET /velas/1/edit
  def edit
  end

  # POST /velas
  # POST /velas.json
  def create
    @vela = Vela.new(vela_params)

    respond_to do |format|
      if @vela.save
        format.html { redirect_to @vela, notice: 'Vela was successfully created.' }
        format.json { render :show, status: :created, location: @vela }
      else
        format.html { render :new }
        format.json { render json: @vela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /velas/1
  # PATCH/PUT /velas/1.json
  def update
    respond_to do |format|
      if @vela.update(vela_params)
        format.html { redirect_to @vela, notice: 'Vela was successfully updated.' }
        format.json { render :show, status: :ok, location: @vela }
      else
        format.html { render :edit }
        format.json { render json: @vela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /velas/1
  # DELETE /velas/1.json
  def destroy
    @vela.destroy
    respond_to do |format|
      format.html { redirect_to velas_url, notice: 'Vela was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vela
      @vela = Vela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vela_params
      params.require(:vela).permit(:Date, :Via, :person, :Organization, :FAS, :FSE, :code, :Instrument, :Description, :Diagnosis, :resolved, :closed)
    end
end
