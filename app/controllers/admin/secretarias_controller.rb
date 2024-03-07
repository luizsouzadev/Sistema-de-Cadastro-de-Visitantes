module Admin
class SecretariasController < AdminController
  before_action :set_secretaria, only: %i[ show edit update destroy ]

  # GET /secretarias or /secretarias.json
  def index
    @secretarias = Secretaria.all
  end

  # GET /secretarias/1 or /secretarias/1.json
  def show
  end

  # GET /secretarias/new
  def new
    @secretaria = Secretaria.new
  end

  # GET /secretarias/1/edit
  def edit
  end

  # POST /secretarias or /secretarias.json
  def create
    @secretaria = Secretaria.new(secretaria_params)

    respond_to do |format|
      if @secretaria.save
        format.html { redirect_to admin_secretaria_url(@secretaria), notice: "Secretaria was successfully created." }
        format.json { render :show, status: :created, location: @secretaria }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @secretaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secretarias/1 or /secretarias/1.json
  def update
    respond_to do |format|
      if @secretaria.update(secretaria_params)
        format.html { redirect_to admin_secretaria_url(@secretaria), notice: "Secretaria was successfully updated." }
        format.json { render :show, status: :ok, location: @secretaria }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @secretaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secretarias/1 or /secretarias/1.json
  def destroy
    @secretaria.destroy!

    respond_to do |format|
      format.html { redirect_to admin_secretarias_path, notice: "Secretaria was successfully destroyed." }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secretaria
      @secretaria = Secretaria.find_by(id: params[:id])

      unless @secretaria
        flash[:alert] = 'Secretaria não encontrada'
        redirect_to admin_secretarias_path
      end
    end

    # Only allow a list of trusted parameters through.
    def secretaria_params
      params.require(:secretaria).permit(:nome)
    end
end
end
