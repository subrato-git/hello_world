class SecondDemosController < ApplicationController
  before_action :set_second_demo, only: %i[ show edit update destroy ]

  # GET /second_demos or /second_demos.json
  def index
    @second_demos = SecondDemo.all
  end

  # GET /second_demos/1 or /second_demos/1.json
  def show
  end

  # GET /second_demos/new
  def new
    @second_demo = SecondDemo.new
  end

  # GET /second_demos/1/edit
  def edit
  end

  # POST /second_demos or /second_demos.json
  def create
    @second_demo = SecondDemo.new(second_demo_params)

    respond_to do |format|
      if @second_demo.save
        format.html { redirect_to second_demo_url(@second_demo), notice: "Second demo was successfully created." }
        format.json { render :show, status: :created, location: @second_demo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @second_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /second_demos/1 or /second_demos/1.json
  def update
    respond_to do |format|
      if @second_demo.update(second_demo_params)
        format.html { redirect_to second_demo_url(@second_demo), notice: "Second demo was successfully updated." }
        format.json { render :show, status: :ok, location: @second_demo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @second_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_demos/1 or /second_demos/1.json
  def destroy
    @second_demo.destroy

    respond_to do |format|
      format.html { redirect_to second_demos_url, notice: "Second demo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_second_demo
      @second_demo = SecondDemo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def second_demo_params
      params.require(:second_demo).permit(:name)
    end
end
