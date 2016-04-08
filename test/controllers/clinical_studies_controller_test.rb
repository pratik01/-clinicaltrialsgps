require 'test_helper'

class ClinicalStudiesControllerTest < ActionController::TestCase
  setup do
    @clinical_study = clinical_studies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinical_studies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinical_study" do
    assert_difference('ClinicalStudy.count') do
      post :create, clinical_study: { affiliation: @clinical_study.affiliation, agency: @clinical_study.agency, agency_class: @clinical_study.agency_class, authority: @clinical_study.authority, brief_summary: @clinical_study.brief_summary, brief_title: @clinical_study.brief_title, condition: @clinical_study.condition, detailed_description: @clinical_study.detailed_description, download_date: @clinical_study.download_date, intervention_name: @clinical_study.intervention_name, intervention_type: @clinical_study.intervention_type, last_name: @clinical_study.last_name, link_text: @clinical_study.link_text, official_title: @clinical_study.official_title, overall_status: @clinical_study.overall_status, phase: @clinical_study.phase, role: @clinical_study.role, source: @clinical_study.source, start_date: @clinical_study.start_date, study_design: @clinical_study.study_design, study_type: @clinical_study.study_type, url: @clinical_study.url }
    end

    assert_redirected_to clinical_study_path(assigns(:clinical_study))
  end

  test "should show clinical_study" do
    get :show, id: @clinical_study
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinical_study
    assert_response :success
  end

  test "should update clinical_study" do
    patch :update, id: @clinical_study, clinical_study: { affiliation: @clinical_study.affiliation, agency: @clinical_study.agency, agency_class: @clinical_study.agency_class, authority: @clinical_study.authority, brief_summary: @clinical_study.brief_summary, brief_title: @clinical_study.brief_title, condition: @clinical_study.condition, detailed_description: @clinical_study.detailed_description, download_date: @clinical_study.download_date, intervention_name: @clinical_study.intervention_name, intervention_type: @clinical_study.intervention_type, last_name: @clinical_study.last_name, link_text: @clinical_study.link_text, official_title: @clinical_study.official_title, overall_status: @clinical_study.overall_status, phase: @clinical_study.phase, role: @clinical_study.role, source: @clinical_study.source, start_date: @clinical_study.start_date, study_design: @clinical_study.study_design, study_type: @clinical_study.study_type, url: @clinical_study.url }
    assert_redirected_to clinical_study_path(assigns(:clinical_study))
  end

  test "should destroy clinical_study" do
    assert_difference('ClinicalStudy.count', -1) do
      delete :destroy, id: @clinical_study
    end

    assert_redirected_to clinical_studies_path
  end
end
