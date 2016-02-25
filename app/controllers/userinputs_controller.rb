class UserinputsController < ApplicationController
  before_action :set_userinput, only: [:show, :edit, :update, :destroy]

  # GET /userinputs
  # GET /userinputs.json
  def index
    @userinputs = Userinput.all
  end

  # GET /userinputs/1
  # GET /userinputs/1.json
  def show
  end

  # GET /userinputs/new
  def new
    @userinput = Userinput.new
  end

  # GET /userinputs/1/edit
  def edit
  end

  # POST /userinputs
  # POST /userinputs.json
  def create
    @userinput = Userinput.new(userinput_params)

    respond_to do |format|
      if @userinput.save
        format.html { redirect_to @userinput, notice: 'Userinput was successfully created.' }
        format.json { render :show, status: :created, location: @userinput }
      else
        format.html { render :new }
        format.json { render json: @userinput.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userinputs/1
  # PATCH/PUT /userinputs/1.json
  def update
    respond_to do |format|
      if @userinput.update(userinput_params)
        format.html { redirect_to @userinput, notice: 'Userinput was successfully updated.' }
        format.json { render :show, status: :ok, location: @userinput }
      else
        format.html { render :edit }
        format.json { render json: @userinput.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userinputs/1
  # DELETE /userinputs/1.json
  def destroy
    @userinput.destroy
    respond_to do |format|
      format.html { redirect_to userinputs_url, notice: 'Userinput was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userinput
      @userinput = Userinput.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userinput_params
      params.require(:userinput).permit(:location1, :location2, :location3, :latitude1, :longitude1, :latitude2, :longitude2, :latitude3, :longitude3 )
    end
end
