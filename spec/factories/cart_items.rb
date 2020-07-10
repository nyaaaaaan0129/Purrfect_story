FactoryBot.define do
   factory :cart_item do
    number_of_items { 1 }
    item_id { 1 }
    member { FactoryBot.create(:member) }
  end
end
