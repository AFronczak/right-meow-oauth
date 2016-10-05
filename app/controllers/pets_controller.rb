class PetsController < ApplicationController
  def create
    # Create a new pet from the params (name and pet_type_id)
    @pet = current_user.pets.create(pets_params)

    # Create a view called   views/pets/create.js.erb with some jquery magic
  end

  def destroy
    @pet = Pet.find(params[:id])

    @pet.destroy
  end

private
  def pets_params
    params.require(:pet).permit(:name, :pet_type_id)
  end
end
