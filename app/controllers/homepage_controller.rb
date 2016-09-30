class HomepageController < ApplicationController
  def index
    if logged_in?
      redirect_to care_providers_path
    end
  end
end
