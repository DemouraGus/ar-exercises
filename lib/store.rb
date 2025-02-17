class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_some_apparel

  private

  def must_carry_some_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Stores must carry at least one type of apparel.")
    end
  end
end
