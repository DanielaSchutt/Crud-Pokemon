class Fase3sController < ApplicationController
  before_action :set_fase3, only: [:show, :edit, :update, :destroy]

  # GET /fase3s
  # GET /fase3s.json
  def index
    @fase3s = Fase3.all
  end

  # GET /fase3s/1
  # GET /fase3s/1.json
  def show
  end

  # GET /fase3s/new
  def new
    @fase3 = Fase3.new
  end

  # GET /fase3s/1/edit
  def edit
  end

  # POST /fase3s
  # POST /fase3s.json
  def create
    @fase3 = Fase3.new(fase3_params)

    respond_to do |format|
      if @fase3.save
        format.html { redirect_to @fase3, notice: 'Terceira fase criada com sucesso' }
        format.json { render :show, status: :created, location: @fase3 }
      else
        format.html { render :new }
        format.json { render json: @fase3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fase3s/1
  # PATCH/PUT /fase3s/1.json
  def update
    respond_to do |format|
      if @fase3.update(fase3_params)
        format.html { redirect_to @fase3, notice: 'Terceira fase editada com sucesso com sucesso' }
        format.json { render :show, status: :ok, location: @fase3 }
      else
        format.html { render :edit }
        format.json { render json: @fase3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fase3s/1
  # DELETE /fase3s/1.json
  def destroy
    @fase3.destroy
    respond_to do |format|
      format.html { redirect_to fase3s_url, notice: 'Terceira fase apagada com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fase3
      @fase3 = Fase3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fase3_params
      params.require(:fase3).permit(:nome)
    end
end
