class ApplicationController < ActionController::Base
  include DeviseWhitelist

  before_action :set_source

  def set_source
    # can access anywhere
    session[:source] = params[:q] if params[:q]
  end
end
