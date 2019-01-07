class FormcomponentsController < ApplicationController
  before_action :set_formcomponent, only: [:show, :edit, :update, :destroy]

  # GET /formcomponents
  # GET /formcomponents.json
  def index
    @formcomponents = Formcomponent.all
  end

  # GET /formcomponents/1
  # GET /formcomponents/1.json
  def show
  end

  # GET /formcomponents/new
  def new
    @formcomponent = Formcomponent.new
  end

  # GET /formcomponents/1/edit
  def edit
  end

  # POST /formcomponents
  # POST /formcomponents.json
  def create
    @formcomponent = Formcomponent.new(formcomponent_params)

    respond_to do |format|
      if @formcomponent.save
        format.html { redirect_to @formcomponent, notice: 'Formcomponent was successfully created.' }
        format.json { render :show, status: :created, location: @formcomponent }
      else
        format.html { render :new }
        format.json { render json: @formcomponent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formcomponents/1
  # PATCH/PUT /formcomponents/1.json
  def update
    respond_to do |format|
      if @formcomponent.update(formcomponent_params)
        format.html { redirect_to @formcomponent, notice: 'Formcomponent was successfully updated.' }
        format.json { render :show, status: :ok, location: @formcomponent }
      else
        format.html { render :edit }
        format.json { render json: @formcomponent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formcomponents/1
  # DELETE /formcomponents/1.json
  def destroy
    @formcomponent.destroy
    respond_to do |format|
      format.html { redirect_to formcomponents_url, notice: 'Formcomponent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formcomponent
      @formcomponent = Formcomponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formcomponent_params
      params.require(:formcomponent).permit(:fcname)
    end
end
