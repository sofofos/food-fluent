class DietProfilesController < ApplicationController
  def new
    @diet_profile = DietProfile.new
    authorize @diet_profile
    @diets = DietProfile.all.uniq(&:health_label_id)
  end

  def create
    diet_profile_params[:health_label_id].each do |id|
      # raise
      @diet_profile = DietProfile.new
      @diet_profile.user = current_user
      @diet_profile.health_label = HealthLabel.find(id.to_i)
      authorize @diet_profile
      render :new && return unless @diet_profile.save
    end

    redirect_to dashboard_path
    authorize [@diet_profile]
  end

  private

  def diet_profile_params
    params.require(:diet_profile).permit(health_label_id: [])
  end
end
