json.array!(@clinical_studies) do |clinical_study|
  json.extract! clinical_study, :id, :download_date, :link_text, :url, :brief_title, :official_title, :agency, :agency_class, :source, :authority, :brief_summary, :detailed_description, :overall_status, :start_date, :phase, :study_type, :study_design, :condition, :intervention_type, :intervention_name, :last_name, :role, :affiliation
  json.url clinical_study_url(clinical_study, format: :json)
end
