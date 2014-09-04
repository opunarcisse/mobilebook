class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.text :complain_of_patient
      t.text :diagnostic_of_doctor
      t.text :prescription_of_doctor
      t.string :drugs_delivered
      t.date :drugs_delivered_on
      t.string :drugs_delivered_by
      t.integer :complain_id
      t.string :complain_type

      t.timestamps
    end
  end
end
