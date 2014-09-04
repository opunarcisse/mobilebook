class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
      t.string :name
      t.string :visiting_address
      t.string :email_address
      t.string :operational_mode
      t.string :city
      t.string :phone
      t.text :remarks

      t.timestamps
    end
  end
end
