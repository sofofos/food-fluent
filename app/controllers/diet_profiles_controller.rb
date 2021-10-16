class DietProfilesController < ApplicationController
  def new
    @diet_profile = DietProfile.new
    authorize @diet_profile
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

    redirect_to root_path
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
    params.require(:diet_profile).permit(health_label_id: [])

    # health_label_id"=>["", "209"]} permitted: false>, "commit"=>"Submit list", "controller"=>"diet_profiles", "action"=>"create"} permitted: false>
  end
end
