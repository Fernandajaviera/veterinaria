class PethistoryController < ApplicationController
  before_action :set_pet_history, only: [:show, :edit, :update, :destroy]
  before_action :find_pet

  def index
    @pet_history = Pethistory.all
  end

  def show
  end

  def new
    @pet_history = Pethistory.new
  end

  def edit
  end

  def create
    @pet_history = Pethistory.new(pet_history_params)

    respond_to do |format|
      if @pet_history.save
        format.html { redirect_to @pet_history, notice: 'Pet history was successfully created.' }
        format.json { render :show, status: :created, location: @pet_history }
      else
        format.html { render :new }
        format.json { render json: @pet_history.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pet_history.update(pet_history_params)
        format.html { redirect_to @pet_history, notice: 'Pet history was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_history }
      else
        format.html { render :edit }
        format.json { render json: @pet_history.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pet_history.destroy
    respond_to do |format|
      format.html { redirect_to pethistory_url, notice: 'Pet history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pet_history
      @pet_history = PetHistory.find(params[:id])
    end

    def pet_history_params
      params.require(:pet_history).permit(:peso, :altura)
    end

    def find_pet
      @pet = Pet.find params[:pet_id]
    end
end
