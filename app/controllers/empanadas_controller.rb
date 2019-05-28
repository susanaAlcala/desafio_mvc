class EmpanadasController < ApplicationController
  before_action :set_empanada, only: [:show, :edit, :update, :destroy]

  # GET /empanadas
  # GET /empanadas.json
  def index
    @empanadas = Empanada.all
  end

  # GET /empanadas/1
  # GET /empanadas/1.json
  def show
  end

  # GET /empanadas/new
  def new
    @empanada = Empanada.new
  end

  # GET /empanadas/1/edit
  def edit
  end

  # POST /empanadas
  # POST /empanadas.json
  def create
    @empanada = Empanada.new(empanada_params)

    respond_to do |format|
      if @empanada.save
        format.html { redirect_to @empanada, notice: 'Empanada was successfully created.' }
        format.json { render :show, status: :created, location: @empanada }
      else
        format.html { render :new }
        format.json { render json: @empanada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empanadas/1
  # PATCH/PUT /empanadas/1.json
  def update
    respond_to do |format|
      if @empanada.update(empanada_params)
        format.html { redirect_to @empanada, notice: 'Empanada was successfully updated.' }
        format.json { render :show, status: :ok, location: @empanada }
      else
        format.html { render :edit }
        format.json { render json: @empanada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empanadas/1
  # DELETE /empanadas/1.json
  def destroy
    @empanada.destroy
    respond_to do |format|
      format.html { redirect_to empanadas_url, notice: 'Empanada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empanada
      @empanada = Empanada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empanada_params
      params.require(:empanada).permit(:ingrediente_ppal, :ingrediente_secundario, :cantidad)
    end
end
