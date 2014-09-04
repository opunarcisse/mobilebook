json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :gender, :birth_date, :email_address, :resident, :phone, :password, :password_salt, :confirm_password, :remarks
  json.url member_url(member, format: :json)
end
