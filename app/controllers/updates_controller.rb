class UpdatesController < ApplicationController

  def index
    @updates = Update.all
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      redirect_to update_path(@update), notice: "Update was successfully created."
    else
      render :new
    end
  end

  def show
    @update = Update.find(params[:id])
  end

  def edit
    @update = Update.find(params[:id])
  end

  def update
    @update = Update.find(params[:id])
    if @update.update(update_params)
      redirect_to update_path(@update), notice: "Update was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @update = Update.find(params[:id])
    @update.destroy
    redirect_to root_path, notice: "Update was successfully deleted."
  end


private

  def update_params
    params.require(:update).permit(:status, :user, :number_of_likes)
  end
end
