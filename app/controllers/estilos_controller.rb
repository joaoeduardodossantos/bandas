class EstilosController < ApplicationController
  before_action :set_estilo, only: [:show, :edit, :update, :destroy]

  # GET /estilos
  # GET /estilos.json
  def index
    @estilos = Estilo.all
  end

  # GET /estilos/1
  # GET /estilos/1.json
  def show
  end

  # GET /estilos/new
  def new
    @estilo = Estilo.new
  end

  # GET /estilos/1/edit
  def edit
  end

  # POST /estilos
  # POST /estilos.json
  def create
    @estilo = Estilo.new(estilo_params)

    respond_to do |format|
      if @estilo.save
        format.html { redirect_to @estilo, notice: 'Estilo was successfully created.' }
        format.json { render :show, status: :created, location: @estilo }
      else
        format.html { render :new }
        format.json { render json: @estilo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estilos/1
  # PATCH/PUT /estilos/1.json
  def update
    respond_to do |format|
      if @estilo.update(estilo_params)
        format.html { redirect_to @estilo, notice: 'Estilo was successfully updated.' }
        format.json { render :show, status: :ok, location: @estilo }
      else
        format.html { render :edit }
        format.json { render json: @estilo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estilos/1
  # DELETE /estilos/1.json
  def destroy
    @estilo.destroy
    respond_to do |format|
      format.html { redirect_to estilos_url, notice: 'Estilo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estilo
      @estilo = Estilo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estilo_params
      params.require(:estilo).permit(:nome)
    end
end
