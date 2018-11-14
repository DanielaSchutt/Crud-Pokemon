class FraquezasController < ApplicationController
  before_action :set_fraqueza, only: [:show, :edit, :update, :destroy]

  # GET /fraquezas
  # GET /fraquezas.json
  def index
    @fraquezas = Fraqueza.all
  end

  # GET /fraquezas/1
  # GET /fraquezas/1.json
  def show
  end

  # GET /fraquezas/new
  def new
    @fraqueza = Fraqueza.new
  end

  # GET /fraquezas/1/edit
  def edit
  end

  # POST /fraquezas
  # POST /fraquezas.json
  def create
    @fraqueza = Fraqueza.new(fraqueza_params)

    respond_to do |format|
      if @fraqueza.save
        format.html { redirect_to @fraqueza, notice: 'Fraqueza criada com sucesso' }
        format.json { render :show, status: :created, location: @fraqueza }
      else
        format.html { render :new }
        format.json { render json: @fraqueza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fraquezas/1
  # PATCH/PUT /fraquezas/1.json
  def update
    respond_to do |format|
      if @fraqueza.update(fraqueza_params)
        format.html { redirect_to @fraqueza, notice: 'Fraqueza editada com sucesso' }
        format.json { render :show, status: :ok, location: @fraqueza }
      else
        format.html { render :edit }
        format.json { render json: @fraqueza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fraquezas/1
  # DELETE /fraquezas/1.json
  def destroy
    @fraqueza.destroy
    respond_to do |format|
      format.html { redirect_to fraquezas_url, notice: 'Fraqueza apagada com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fraqueza
      @fraqueza = Fraqueza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fraqueza_params
      params.require(:fraqueza).permit(:nome)
    end
end
