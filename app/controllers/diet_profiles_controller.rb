class DietProfilesController < ApplicationController
  before_action :find_diet_profile, only: %i[edit update]

  def new
    @diet_profile = DietProfile.new
    authorize @diet_profile
    @diet_labels = HealthLabel.all.uniq(&:name).sort_by(&:name)
  end

  def create
    create_diet_profiles
  end

  def edit
    @diets = current_user.diet_profiles.map(&:id)
    params[:id] = @diets
    @diet_labels = HealthLabel.all.uniq(&:name).sort_by(&:name)
  end

  def update
    current_user.diet_profiles.destroy_all
    @diet_profile.nil? ? redirect_to(dashboard_path) : create_diet_profiles
  end

  private

  def find_diet_profile
    # @diets = current_user.diet_profiles.map(&:id)
    # params[:id] = @diets
    @diet_profile = DietProfile.find(params[:id])
    authorize @diet_profile
  end

  def diet_profile_params
    params.require(:diet_profile).permit(health_label_id: [])
  end

  def create_diet_profiles
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
end
