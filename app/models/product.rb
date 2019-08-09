class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :cost, :country_of_origin, presence: true
  validates :cost, numericality: true

  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
end
