FactoryBot.define do
  factory :item do
    item_name { "test" }
    explanation { "test" }
    unit_price_without_tax { 100 }
    sale_status { 0 }
    item_genre { FactoryBot.create(:item_genre) }
  end
end

