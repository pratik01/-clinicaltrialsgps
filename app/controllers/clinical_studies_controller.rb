class ClinicalStudiesController < ApplicationController
  before_action :set_clinical_study, only: [:show, :edit, :update, :destroy]

  # GET /clinical_studies
  # GET /clinical_studies.json
  def index
    @clinical_studies = ClinicalStudy.all
  end

  # GET /clinical_studies/1
  # GET /clinical_studies/1.json
  def show
  end

  # GET /clinical_studies/new
  def new
    @clinical_study = ClinicalStudy.new
  end

  # GET /clinical_studies/1/edit
  def edit
  end

  # POST /clinical_studies
  # POST /clinical_studies.json
  def create
    @clinical_study = ClinicalStudy.new(clinical_study_params)

    respond_to do |format|
      if @clinical_study.save
        format.html { redirect_to @clinical_study, notice: 'Clinical study was successfully created.' }
        format.json { render :show, status: :created, location: @clinical_study }
      else
        format.html { render :new }
        format.json { render json: @clinical_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinical_studies/1
  # PATCH/PUT /clinical_studies/1.json
  def update
    respond_to do |format|
      if @clinical_study.update(clinical_study_params)
        format.html { redirect_to @clinical_study, notice: 'Clinical study was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinical_study }
      else
        format.html { render :edit }
        format.json { render json: @clinical_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinical_studies/1
  # DELETE /clinical_studies/1.json
  def destroy
    @clinical_study.destroy
    respond_to do |format|
      format.html { redirect_to clinical_studies_url, notice: 'Clinical study was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinical_study
      @clinical_study = ClinicalStudy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinical_study_params
      params.require(:clinical_study).permit(:download_date, :link_text, :url, :brief_title, :official_title, :agency, :agency_class, :source, :authority, :brief_summary, :detailed_description, :overall_status, :start_date, :phase, :study_type, :study_design, :condition, :intervention_type, :intervention_name, :last_name, :role, :affiliation)
    end
end
