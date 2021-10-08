class DietProfilesController < ApplicationController
  def new
    @diet_profile = DietProfile.new
    authorize [@diet_profile]
  end

  def create
    @diet_profile = DietProfile.new(diet_profile_params)
    @diet_profile.user = current_user
    authorize [@diet_profile]
    if @diet_profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def diet_profile_params
    params.require(:diet_profile).permit(:health_labels)
  end
end
