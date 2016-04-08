class CreateClinicalStudies < ActiveRecord::Migration
  def change
    create_table :clinical_studies do |t|
      t.string :download_date
      t.string :link_text
      t.string :url
      t.string :brief_title
      t.string :official_title
      t.string :agency
      t.string :agency_class
      t.string :source
      t.string :authority
      t.text :brief_summary
      t.text :detailed_description
      t.string :overall_status
      t.string :start_date
      t.string :phase
      t.string :study_type
      t.string :study_design
      t.string :condition
      t.string :intervention_type
      t.string :intervention_name
      t.string :last_name
      t.string :role
      t.string :affiliation
      t.string :verification_date
      t.string :lastchanged_date
      t.string :firstreceived_date
      t.string :responsible_party_type
      t.string :keyword_1
      t.string :keyword_2
      t.string :is_fda_regulated
      t.string :has_expanded_access
      t.string :mesh_term
      t.timestamps null: false
    end
  end
end
