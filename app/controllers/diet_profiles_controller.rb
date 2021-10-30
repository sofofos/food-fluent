class DietProfilesController < ApplicationController
  before_action :find_diet_profile, only: %i[edit update]

  def new
    @diet_profile = DietProfile.new
    authorize @diet_profile
    @diet_labels = HealthLabel.all.uniq(&:name).sort_by(&:name)
  end

  def create
    diet_profile_params[:health_label_id].each do |id|
      @diet_profile = DietProfile.new
      @diet_profile.user = current_user
      @diet_profile.health_label = HealthLabel.find(id.to_i)
      authorize @diet_profile
      render :new && return unless @diet_profile.save
    end
    redirect_to dashboard_path
    authorize [@diet_profile]
  end

  def edit; end

  def update
    current_user.diet_profiles.destroy_all

    diet_profile_params[:health_label_id].each do |id|
      @diet_profile = DietProfile.new
      @diet_profile.user = current_user
      @diet_profile.health_label = HealthLabel.find(id.to_i)
      authorize @diet_profile
      render :new && return unless @diet_profile.save
    end
    authorize @diet_profile

    redirect_to dashboard_path
  end

  private

  def find_diet_profile
    @diet_profiles = DietProfile.find(params[health_label_id: []])
  end

  def diet_profile_params
    params.require(:diet_profile).permit(health_label_id: [])
  end
end
