class CreateRecedenDiseases < ActiveRecord::Migration[7.1]
  def change
    create_table :receden_diseases do |t|
      t.integer :update_category
      t.string :master_type
      t.string :disease_code
      t.string :transfer_code
      t.integer :disease_base_name_len
      t.string :disease_base_name
      t.integer :disease_abbrv_len
      t.string :disease_abbrv_name
      t.integer :disease_kana_len
      t.string :disease_kana_name
      t.integer :disease_control_num
      t.integer :adoption_category
      t.string :exchange_code
      t.string :icd_10_1
      t.string :icd_10_2
      t.string :icd_10_1_2013
      t.string :icd_10_2_2013
      t.string :reservation_18
      t.string :stand_alone_prohibition
      t.integer :not_claim
      t.string :specific_disease_category
      t.date :registered_date
      t.date :updated_date
      t.integer :disease_base_name_update
      t.integer :disease_name_abbrv_update
      t.integer :disease_kana_update
      t.integer :adoption_category_update
      t.integer :exchange_code_update
      t.integer :icd_10_1_update
      t.integer :icd_10_2_update
      t.integer :dental_abbrv_update
      t.integer :nambyo_category_update
      t.integer :dental_specific_disease_category_update
      t.integer :stand_alone_prohibition_update
      t.integer :not_claim_update
      t.integer :specific_disease_update
      t.string :changed_code
      t.string :dental_disease_abbrv
      t.string :reservation40
      t.decimal :reservation41
      t.integer :dental_disease_abbrv_len
      t.string :nambyo_outpatient_category
      t.string :dental_specific_disease_category
      t.integer :icd_10_1_2013_update
      t.integer :icd_10_2_2013_update

      t.timestamps
    end
  end
end
