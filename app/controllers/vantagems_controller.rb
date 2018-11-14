class VantagemsController < ApplicationController
  before_action :set_vantagem, only: [:show, :edit, :update, :destroy]

  # GET /vantagems
  # GET /vantagems.json
  def index
    @vantagems = Vantagem.all
  end

  # GET /vantagems/1
  # GET /vantagems/1.json
  def show
  end

  # GET /vantagems/new
  def new
    @vantagem = Vantagem.new
  end

  # GET /vantagems/1/edit
  def edit
  end

  # POST /vantagems
  # POST /vantagems.json
  def create
    @vantagem = Vantagem.new(vantagem_params)

    respond_to do |format|
      if @vantagem.save
        format.html { redirect_to @vantagem, notice: 'Vantagem criada com sucesso }
        format.json { render :show, status: :created, location: @vantagem }
      else
        format.html { render :new }
        format.json { render json: @vantagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vantagems/1
  # PATCH/PUT /vantagems/1.json
  def update
    respond_to do |format|
      if @vantagem.update(vantagem_params)
        format.html { redirect_to @vantagem, notice: 'Vantagem editado com sucesso' }
        format.json { render :show, status: :ok, location: @vantagem }
      else
        format.html { render :edit }
        format.json { render json: @vantagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vantagems/1
  # DELETE /vantagems/1.json
  def destroy
    @vantagem.destroy
    respond_to do |format|
      format.html { redirect_to vantagems_url, notice: 'Vantagem apagado com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vantagem
      @vantagem = Vantagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vantagem_params
      params.require(:vantagem).permit(:nome)
    end
end
