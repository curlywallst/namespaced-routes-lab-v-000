class Admin::PreferencesController < ApplicationController
  before_action :find_preference, only: [:update, :index]

  def index

  end

  # def new
  #   if Preference.all.empty?
  #     @preference = Preference.new
  #   else
  #     redirect_to :edit
  #   end
  # end
  #
  # def create
  #   @preference = Preference.new(preference_params)
  #   @preference.save
  #   redirect_to admin_preferences_path
  # end
  #
  # def edit
  #
  # end

  def update
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end


private
  def find_preference
    if Preference.all.empty?
      @preference = Preference.new
    else
      @preference = Preference.first
    end
  end

  def preference_params
    params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_artists, :allow_create_songs)
  end

end
