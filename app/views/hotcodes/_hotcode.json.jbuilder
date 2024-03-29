json.extract! hotcode, :id, :standard_hot, :hot7, :manufacturer_code,
              :preparation_code, :logistics_code, :jan, :mhlw, :yj,
              :receden_code1, :receden_code2, :notice, :product_name,
              :receden_name, :unit, :package_style, :package_unit_num,
              :package_unit_unit, :total_package_unit_num,
              :total_package_unit_unit, :category, :manufacturer,
              :seller, :update_category, :update_date, :created_at,
              :updated_at
json.url hotcode_url(hotcode, format: :json)
