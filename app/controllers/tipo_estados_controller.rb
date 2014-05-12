class TipoEstadosController < ApplicationController
  before_action :set_tipo_estado, only: [:show, :edit, :update, :destroy]

  # GET /tipo_estados
  # GET /tipo_estados.json
  def index
    @tipo_estados = TipoEstado.all
  end

  # GET /tipo_estados/1
  # GET /tipo_estados/1.json
  def show
  end

  # GET /tipo_estados/new
  def new
    @tipo_estado = TipoEstado.new
  end

  # GET /tipo_estados/1/edit
  def edit
  end

  # POST /tipo_estados
  # POST /tipo_estados.json
  def create
    @tipo_estado = TipoEstado.new(tipo_estado_params)

    respond_to do |format|
      if @tipo_estado.save
        format.html { redirect_to @tipo_estado, notice: 'Tipo estado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_estado }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_estados/1
  # PATCH/PUT /tipo_estados/1.json
  def update
    respond_to do |format|
      if @tipo_estado.update(tipo_estado_params)
        format.html { redirect_to @tipo_estado, notice: 'Tipo estado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_estados/1
  # DELETE /tipo_estados/1.json
  def destroy
    @tipo_estado.destroy
    respond_to do |format|
      format.html { redirect_to tipo_estados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_estado
      @tipo_estado = TipoEstado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_estado_params
      params.require(:tipo_estado).permit(:nombre, :descripcion)
    end
end
