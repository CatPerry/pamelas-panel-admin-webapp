class StudentCohortsController < ApplicationController
  before_action :set_student_cohort, only: [:show, :edit, :update, :destroy]

  # GET /student_cohorts
  # GET /student_cohorts.json
  def index
    @student_cohorts = StudentCohort.all
  end

  # GET /student_cohorts/1
  # GET /student_cohorts/1.json
  def show
  end

  # GET /student_cohorts/new
  def new
    @student_cohort = StudentCohort.new
  end

  # GET /student_cohorts/1/edit
  def edit
  end

  # POST /student_cohorts
  # POST /student_cohorts.json
  def create
    @student_cohort = StudentCohort.new(student_cohort_params)

    respond_to do |format|
      if @student_cohort.save
        format.html { redirect_to @student_cohort, notice: 'Student cohort was successfully created.' }
        format.json { render :show, status: :created, location: @student_cohort }
      else
        format.html { render :new }
        format.json { render json: @student_cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_cohorts/1
  # PATCH/PUT /student_cohorts/1.json
  def update
    respond_to do |format|
      if @student_cohort.update(student_cohort_params)
        format.html { redirect_to @student_cohort, notice: 'Student cohort was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_cohort }
      else
        format.html { render :edit }
        format.json { render json: @student_cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_cohorts/1
  # DELETE /student_cohorts/1.json
  def destroy
    @student_cohort.destroy
    respond_to do |format|
      format.html { redirect_to student_cohorts_url, notice: 'Student cohort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_cohort
      @student_cohort = StudentCohort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_cohort_params
      params.require(:student_cohort).permit(:student_id, :cohort_id)
    end
end
