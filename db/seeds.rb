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

CSV.foreach('db/MEDIS20231231.TXT', headers: true, encoding: 'sjis') do |line|
  Hotcode.create(
    standard_hot: line["基準番号（ＨＯＴコード）"],
    hot7: line["処方用番号（ＨＯＴ７）"],
    manufacturer_code: line["会社識別用番号"],
    preparation_code: line["調剤用番号"],
    logistics_code: line["物流用番号"], jan: line["ＪＡＮコード"],
    mhlw: line["薬価基準収載医薬品コード"],
    yj: line["個別医薬品コード"],
    receden_code1: line["レセプト電算処理システムコード（１）"],
    receden_code2: line["レセプト電算処理システムコード（２）"],
    notice: line["告示名称"],
    product_name: line["販売名"],
    receden_name: line["レセプト電算処理システム医薬品名"],
    unit: line["規格単位"],
    package_style: line["包装形態"],
    package_unit_num: line["包装単位数"],
    package_unit_unit: line["包装単位単位"],
    total_package_unit_num: line["包装総量数"],
    total_package_unit_unit: line["包装総量単位"],
    category: line["区分"],
    manufacturer: line["製造会社"], seller: line["販売会社"],
    update_category: line["更新区分"],
    update_date: Date.parse(line["更新年月日"])
  )
end

CSV.foreach('db/y_ALL20240115.csv', headers: false, encoding: 'sjis') do |line|
  RecedenDrug.create(
    update_category: line[0], master_type: line[1],
    drug_code: line[2],
    kanji_len: line[3], kanji_name: line[4],
    kana_len: line[5], kana_name: line[6],
    unit_code: line[7], unit_len: line[8], unit_name: line[9],
    price_category: line[10], price: line[11],
    reserved13: line[12],
    narcotics_category: line[13],
    nerve_destroying: line[14],
    bio: line[15],
    generic: line[16],
    reserved18: line[17],
    dent_specific: line[18],
    enhancer: line[19],
    injection_volume: line[20],
    registration_category: line[21],
    product_name_code: line[22],
    old_price_category: line[23],
    old_price: line[24],
    kanji_update_category: line[25],
    kana_update_category: line[26],
    drug_form: line[27],
    reserve29: line[28],
    updated_date: Date.parse(line[29]),
    abolition_date: line[30] == '99999999' ? nil : Date.parse(line[31]),
    mhlwcode: line[31],
    publication_order: line[32],
    expiration_date: line[33] == '0' ? nil : Date.parse(line[33]),
    product_name: line[34]
  )
end
