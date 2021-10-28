class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :add_procs, only: [:dashboard]

  def home
  end

  def dashboard
    @user = current_user
    @diets = current_user.diet_profiles
    @friends = current_user.friends
  end

  private

  def add_procs
    @diet = proc { |x| x.health_label.category == "diet" }
    @allergy = proc { |x| x.health_label.category == "allergy" }
    @macros = proc { |x| x.health_label.category == "macros" }
  end
end
