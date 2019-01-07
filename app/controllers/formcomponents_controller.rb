class FormcomponentsController < ApplicationController
  before_action :set_formcomponent, only: [:show, :update, :destroy]

  # GET /formcomponents
  # GET /formcomponents.json
  def index
    #@formcomponents = Formcomponent.all
    @formcomponents = [
      {
        :id => 1,
        :created_at => 3,
        :updated_at => 3,
        :fcname => "foo"
      },
      {
        :id => 2,
        :created_at => 3,
        :updated_at => 3,
        :fcname => "foo"
      }
    ]
  end

  # GET /formcomponents/1
  # GET /formcomponents/1.json
  def show
  end

  # POST /formcomponents
  # POST /formcomponents.json
  def create
    @formcomponent = Formcomponent.new(formcomponent_params)

    if @formcomponent.save
      render :show, status: :created, location: @formcomponent
    else
      render json: @formcomponent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formcomponents/1
  # PATCH/PUT /formcomponents/1.json
  def update
    if @formcomponent.update(formcomponent_params)
      render :show, status: :ok, location: @formcomponent
    else
      render json: @formcomponent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formcomponents/1
  # DELETE /formcomponents/1.json
  def destroy
    @formcomponent.destroy
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
