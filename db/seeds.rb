# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'csv'
require 'date'

CSV.foreach('db/MEDIS20231231.TXT', headers: true, encoding: 'sjis') do |value|
  Hotcode.create(
    standard_hot: value["基準番号（ＨＯＴコード）"],
    hot7: value["処方用番号（ＨＯＴ７）"],
    manufacturer_code: value["会社識別用番号"],
    preparation_code: value["調剤用番号"],
    logistics_code: value["物流用番号"], jan: value["ＪＡＮコード"],
    mhlw: value["薬価基準収載医薬品コード"],
    yj: value["個別医薬品コード"],
    receden_code1: value["レセプト電算処理システムコード（１）"],
    receden_code2: value["レセプト電算処理システムコード（２）"],
    notice: value["告示名称"],
    product_name: value["販売名"],
    receden_name: value["レセプト電算処理システム医薬品名"],
    unit: value["規格単位"],
    package_style: value["包装形態"],
    package_unit_num: value["包装単位数"],
    package_unit_unit: value["包装単位単位"],
    total_package_unit_num: value["包装総量数"],
    total_package_unit_unit: value["包装総量単位"],
    category: value["区分"],
    manufacturer: value["製造会社"], seller: value["販売会社"],
    update_category: value["更新区分"],
    update_date: Date.parse(value["更新年月日"])
  )
end

CSV.foreach('db/y_ALL20240115.csv', headers: false, encoding: 'sjis') do |value|
  RecedenDrug.create(
    update_category: value[0], master_type: value[1],
    drug_code: value[2],
    kanji_len: value[3], kanji_name: value[4],
    kana_len: value[5], kana_name: value[6],
    unit_code: value[7], unit_len: value[8], unit_name: value[9],
    price_category: value[10], price: value[11],
    reserved13: value[12],
    narcotics_category: value[13],
    nerve_destroying: value[14],
    bio: value[15],
    generic: value[16],
    reserved18: value[17],
    dent_specific: value[18],
    enhancer: value[19],
    injection_volume: value[20],
    registration_category: value[21],
    product_name_code: value[22],
    old_price_category: value[23],
    old_price: value[24],
    kanji_update_category: value[25],
    kana_update_category: value[26],
    drug_form: value[27],
    reserve29: value[28],
    updated_date: Date.parse(value[29]),
    abolition_date: value[30] == '99999999' ? nil : Date.parse(value[31]),
    mhlwcode: value[31],
    publication_order: value[32],
    expiration_date: value[33] == '0' ? nil : Date.parse(value[33]),
    product_name: value[34]
  )
end

CSV.foreach('db/b_20240101.txt', headers: false, encoding: 'sjis') do |value|
  RecedenDisease.create(
    update_category: value[0],
    master_type: value[1],
    disease_code: value[2],
    transfer_code: value[3],
    disease_base_name_len: value[4],
    disease_base_name: value[5],
    disease_abbrv_len: value[6],
    disease_abbrv_name: value[7],
    disease_kana_len: value[8],
    disease_kana_name: value[9],
    disease_control_num: value[10],
    adoption_category: value[11],
    exchange_code: value[12],
    icd_10_1: value[13],
    icd_10_2: value[14],
    icd_10_1_2013: value[15],
    icd_10_2_2013: value[16],
    reservation_18: value[17],
    stand_alone_prohibition: value[18],
    not_claim: value[19],
    specific_disease_category: value[20],
    registered_date: value[21] == '' ? nil : Date.parse(value[21]),
    updated_date: value[22] == '' ? nil : Date.parse(value[22]),
    disease_base_name_update: value[23] == '99999999' ? nil : Date.parse(value[23]),
    disease_name_abbrv_update: value[24],
    disease_kana_update: value[25],
    adoption_category_update: value[26],
    exchange_code_update: value[27],
    icd_10_1_update: value[28],
    icd_10_2_update: value[29],
    dental_abbrv_update: value[30],
    nambyo_category_update: value[31],
    dental_specific_disease_category_update: value[32],
    stand_alone_prohibition_update: value[33],
    not_claim_update: value[34],
    specific_disease_update: value[35],
    changed_code: value[36],
    dental_disease_abbrv: value[37],
    reservation40: value[38],
    reservation41: value[39],
    dental_disease_abbrv_len: value[40],
    nambyo_outpatient_category: value[41],
    dental_specific_disease_category: value[42],
    icd_10_1_2013_update: value[43],
    icd_10_2_2013_update: value[44]
  )
end
