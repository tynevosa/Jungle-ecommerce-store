class Order < ApplicationRecord
  
  has_many :line_items

  monetize :total_cents, numericality: true

  validates :stripe_charge_id, presence: true

  def sum_line_items()
    return self.line_items.sum(&:total_price_cents)
  end

end
