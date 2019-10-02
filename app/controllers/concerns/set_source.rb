module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  def set_source
    # can access anywhere
    session[:source] = params[:q] if params[:q]
  end

end