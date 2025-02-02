class DireccionsController < ApplicationController
  before_action :set_direccion, only: %i[ show edit update destroy ]

  # GET /direccions or /direccions.json
  def index
    @direccions = Direccion.all
  end

  # GET /direccions/1 or /direccions/1.json
  def show
  end

  # GET /direccions/new
  def new
    @direccion = Direccion.new
  end

  # GET /direccions/1/edit
  def edit
  end

  # POST /direccions or /direccions.json
  def create
    @direccion = Direccion.new(direccion_params)

    respond_to do |format|
      if @direccion.save
        format.html { redirect_to @direccion, notice: "Direccion was successfully created." }
        format.json { render :show, status: :created, location: @direccion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @direccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /direccions/1 or /direccions/1.json
  def update
    respond_to do |format|
      if @direccion.update(direccion_params)
        format.html { redirect_to @direccion, notice: "Direccion was successfully updated." }
        format.json { render :show, status: :ok, location: @direccion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @direccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direccions/1 or /direccions/1.json
  def destroy
    @direccion.destroy!

    respond_to do |format|
      format.html { redirect_to direccions_path, status: :see_other, notice: "Direccion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direccion
      @direccion = Direccion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def direccion_params
      params.require(:direccion).permit(:usuario_id, :direccion_linea1, :direccion_linea2, :ciudad, :codigo_postal)
    end
end
