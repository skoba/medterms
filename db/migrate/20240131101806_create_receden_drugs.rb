class CreateRecedenDrugs < ActiveRecord::Migration[7.1]
  def change
    create_table :receden_drugs do |t|
      t.integer :update_category
      t.string :master_type
      t.string :drug_code
      t.integer :kanji_len
      t.string :kanji_name
      t.integer :kana_len
      t.string :kana_name
      t.integer :unit_code
      t.integer :unit_len
      t.string :unit_name
      t.integer :price_category
      t.decimal :price
      t.integer :reserved13
      t.integer :narcotics_category
      t.integer :nerve_destroying
      t.integer :bio
      t.integer :generic
      t.integer :reserved18
      t.integer :dent_specific
      t.integer :enhancer
      t.decimal :injection_volume
      t.integer :registration_category
      t.integer :product_name_code
      t.integer :old_price_category
      t.decimal :old_price
      t.integer :kanji_update_category
      t.integer :kana_update_category
      t.integer :drug_form
      t.text :reserve29
      t.date :updated_date
      t.date :abolition_date
      t.string :mhlwcode
      t.integer :publication_order
      t.date :expiration_date
      t.text :product_name

      t.timestamps
    end
  end
end
