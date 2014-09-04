json.array!(@consults) do |consult|
  json.extract! consult, :id, :complain_of_patient, :diagnostic_of_doctor, :prescription_of_doctor, :drugs_delivered, :drugs_delivered_on, :drugs_delivered_by, :complain_id, :complain_type
  json.url consult_url(consult, format: :json)
end
