class StudentifsController < ApplicationController
  before_action :set_studentif, only: %i[ show edit update destroy ]

  # GET /studentifs or /studentifs.json
  def index
    @studentifs = Studentif.all
  end

  # GET /studentifs/1 or /studentifs/1.json
  def show
  end

  # GET /studentifs/new
  def new
    @studentif = Studentif.new
  end

  # GET /studentifs/1/edit
  def edit
  end

  # POST /studentifs or /studentifs.json
  def create
    @studentif = Studentif.new(studentif_params)

    respond_to do |format|
      if @studentif.save
        format.html { redirect_to @studentif, notice: "Studentif was successfully created." }
        format.json { render :show, status: :created, location: @studentif }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studentif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentifs/1 or /studentifs/1.json
  def update
    respond_to do |format|
      if @studentif.update(studentif_params)
        format.html { redirect_to @studentif, notice: "Studentif was successfully updated." }
        format.json { render :show, status: :ok, location: @studentif }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studentif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentifs/1 or /studentifs/1.json
  def destroy
    @studentif.destroy
    respond_to do |format|
      format.html { redirect_to studentifs_url, notice: "Studentif was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentif
      @studentif = Studentif.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studentif_params
      params.require(:studentif).permit(:firts_name, :last_name, :email, :phone, :facebook)
    end
end
