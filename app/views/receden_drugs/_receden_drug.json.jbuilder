json.extract! receden_drug, :id, :update_category, :master_type,
              :drug_code, :kanji_len, :kanji_name, :kana_len, :kana_name,
              :unit_code, :unit_len, :unit_name, :price_category, :price,
              :reserved13, :narcotics_category, :nerve_destroying, :bio,
              :generic, :reserved18, :dent_specific, :enhancer, :injection_volume,
              :registration_category, :product_name_code, :old_price_category,
              :old_price, :kanji_update_category, :kana_update_category,
              :drug_form, :reserve29, :updated_date, :abolition_date,
              :mhlwcode, :publication_order, :expiration_date,
              :product_name, :created_at, :updated_at
json.url receden_drug_url(receden_drug, format: :json)
