FactoryBot.define do
  factory :receden_medication do
    update_cat { 1 }
    master_type { "MyString" }
    drug_code { "MyString" }
    kanji_len { 1 }
    kanji_name { "MyString" }
    kana_len { 1 }
    kana_name { "MyString" }
    unit_code { 1 }
    unit_len { 1 }
    unit_name { "MyString" }
    price_category { 1 }
    price { "9.99" }
    reserved13 { 1 }
    narcotics_category { 1 }
    nerve_destroying { 1 }
    bio { 1 }
    generic { 1 }
    reserved18 { 1 }
    dent_specific { 1 }
    enhancer { 1 }
    injection_volume { "9.99" }
    registration_category { 1 }
    product_name_code { 1 }
    old_price_category { 1 }
    old_price { "9.99" }
    kanji_update_category { 1 }
    kana_update_category { 1 }
    drug_form { 1 }
    reserve29 { "MyText" }
    updated_date { "2024-01-31" }
    abolition_date { "2024-01-31" }
    mhlwcode { "MyString" }
    publication_order { 1 }
    expiration_date { "2024-01-31" }
    product_name { "MyText" }
  end
end
