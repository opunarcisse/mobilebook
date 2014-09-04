class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birth_date
      t.string :email_address
      t.string :resident
      t.string :phone
      t.string :password
      t.string :password_salt
      t.string :confirm_password
      t.text :remarks

      t.timestamps
    end
  end
end
