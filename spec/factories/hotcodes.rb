FactoryBot.define do
  factory :hotcode do
    standard_hot { '1003031010101' }
    hot7 { '1003031' }
    manufacturer_code { '01' }
    preparation_code { '01' }
    logistics_code { '01' }
    jan { '' }
    mhlw { '1112700X1011' }
    yj { '1112700X1038' }
    receden_code1 { '661110021' }
    receden_code2 { '661110004' }
    notice { '（局）ハロタン' }
    product_name { 'フローセン' }
    receden_name { 'フローセン' }
    unit { '１ｍＬ' }
    package_style { '調剤用' }
    package_unit_num { 250 }
    package_unit_unit { 'ＭＬ' }
    total_package_unit_num { 250 }
    total_package_unit_unit { 'ＭＬ' }
    category { '外' }
    manufacturer { '武田薬品' }
    seller { '武田薬品' }
    update_category { '4' }
    update_date { '2010-03-31' }
  end
end
