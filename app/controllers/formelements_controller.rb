require 'pp'

class FormelementsController < ApplicationController
  before_action :set_formelement, only: [:show, :edit, :update, :destroy]

  # GET /formelements
  # GET /formelements.json
  def index
    @formelements = Formelement.all
  end

  # GET /formelements/1
  # GET /formelements/1.json
  def show
  end

  # GET /formelements/new
  def new
    @formelement = Formelement.new
  end

  # GET /formelements/1/edit
  def edit
  end

  # POST /formelements
  # POST /formelements.json
  # NOTE: nothing is stored in DB...basically it just creates a slug and returns obj
  def create
    puts 'here: fe ctrlr create'
    pp formelement_params
    @formelement = Formelement.new(formelement_params)
    #@formelement.slug = '12-my-foo-bar'

    respond_to do |format|
      if true
        # equiv to save() succeed
        format.html { redirect_to @formelement, notice: 'Formelement was successfully created.' }
        format.json { render :show, status: :created, location: @formelement }
      else
        # equiv to save() fail
        format.html { render :new }
        format.json { render json: @formelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formelements/1
  # PATCH/PUT /formelements/1.json
  def update
    respond_to do |format|
      if @formelement.update(formelement_params)
        format.html { redirect_to @formelement, notice: 'Formelement was successfully updated.' }
        format.json { render :show, status: :ok, location: @formelement }
      else
        format.html { render :edit }
        format.json { render json: @formelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formelements/1
  # DELETE /formelements/1.json
  def destroy
    @formelement.destroy
    respond_to do |format|
      format.html { redirect_to formelements_url, notice: 'Formelement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formelement
      @formelement = Formelement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formelement_params
      #params.fetch(:formelement, {})
      params.require(:formelement).permit(:fename)
    end
end
