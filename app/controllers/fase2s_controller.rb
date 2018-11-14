class Fase2sController < ApplicationController
  before_action :set_fase2, only: [:show, :edit, :update, :destroy]

  # GET /fase2s
  # GET /fase2s.json
  def index
    @fase2s = Fase2.all
  end

  # GET /fase2s/1
  # GET /fase2s/1.json
  def show
  end

  # GET /fase2s/new
  def new
    @fase2 = Fase2.new
  end

  # GET /fase2s/1/edit
  def edit
  end

  # POST /fase2s
  # POST /fase2s.json
  def create
    @fase2 = Fase2.new(fase2_params)

    respond_to do |format|
      if @fase2.save
        format.html { redirect_to @fase2, notice: 'Segunda fase criada com sucesso' }
        format.json { render :show, status: :created, location: @fase2 }
      else
        format.html { render :new }
        format.json { render json: @fase2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fase2s/1
  # PATCH/PUT /fase2s/1.json
  def update
    respond_to do |format|
      if @fase2.update(fase2_params)
        format.html { redirect_to @fase2, notice: 'Segunda fase editada com sucesso' }
        format.json { render :show, status: :ok, location: @fase2 }
      else
        format.html { render :edit }
        format.json { render json: @fase2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fase2s/1
  # DELETE /fase2s/1.json
  def destroy
    @fase2.destroy
    respond_to do |format|
      format.html { redirect_to fase2s_url, notice: 'Segunda fase apagada com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fase2
      @fase2 = Fase2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fase2_params
      params.require(:fase2).permit(:nome)
    end
end
