class CreatePersonnels < ActiveRecord::Migration
  def change
    create_table :personnels do |t|
      t.string :specialist
      t.string :title
      t.string :name
      t.date :start_date
      t.string :email_address
      t.string :duty_station
      t.string :phone
      t.text :remarks

      t.timestamps
    end
  end
end
