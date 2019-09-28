class Portfolio < ApplicationRecord
  include Placeholder

  has_many:technologies
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  # Portfolio.angular
  def self.angular
    where(subtitle: 'Angular')
  end

  # Portfolio.ruby_on_rails_portfolio_items
  scope :ruby_on_rails_portfolio_items  , -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')

    # ||= means, if self.main_image = nil ~ end
  end

end
