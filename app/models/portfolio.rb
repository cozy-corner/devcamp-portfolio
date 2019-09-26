class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  # Portfolio.angular
  def self.angular
    where(subtitle: 'Angular')
  end

  # Portfolio.ruby_on_rails_portfolio_items
  scope :ruby_on_rails_portfolio_items  , -> {where(subtitle: 'Ruby on Rails')}

end
