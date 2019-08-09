class Review < ApplicationRecord
  belongs_to :product
  validates :name, :rating, :content_body, presence: true
  validates_length_of :content_body, minimum: 50, maximum: 250
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5}

  before_save(:titleize_review)

  private
    def titleize_review
      self.name = self.name.titleize
    end
end
