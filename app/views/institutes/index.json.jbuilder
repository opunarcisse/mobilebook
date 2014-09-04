json.array!(@institutes) do |institute|
  json.extract! institute, :id, :name, :visiting_address, :email_address, :operational_mode, :city, :phone, :remarks
  json.url institute_url(institute, format: :json)
end
