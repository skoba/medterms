class CreateHotcodes < ActiveRecord::Migration[7.1]
  def change
    create_table :hotcodes do |t|
      t.string :standard_hot
      t.string :hot7
      t.string :manufacturer_code
      t.string :preparation_code
      t.string :logistics_code
      t.string :jan
      t.string :mhlw
      t.string :yj
      t.string :receden_code1
      t.string :receden_code2
      t.string :notice
      t.string :product_name
      t.string :receden_name
      t.string :unit
      t.string :package_style
      t.integer :package_unit_num
      t.string :package_unit_unit
      t.integer :total_package_unit_num
      t.string :total_package_unit_unit
      t.string :category
      t.string :manufacturer
      t.string :seller
      t.string :update_category
      t.date :update_date

      t.timestamps
    end
  end
end
