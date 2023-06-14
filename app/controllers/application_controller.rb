class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_q, only: [:index, :search]
  
  def search
    @results = @q.result
  end

  private

  def set_q
    @q = User.ransack(params[:q])
  end
  
end
