module DefaultPageContent
      extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults      
  end

  def set_page_defaults
    @page_title = "CoziesPortfolio"
    @seo_keywords = "Cozy Corner portfolio"
  end
end