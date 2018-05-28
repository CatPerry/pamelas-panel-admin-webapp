class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]
  before_action :set_teacher, only: [:edit, :update]

  # GET /cohorts
  # GET /cohorts.json
  def index
    @cohorts = Cohort.all
    @course = Course.all
  end

  # GET /cohorts/1
  # GET /cohorts/1.json
  def show
    @cohort = Cohort.find(params[:id])
    @courses = Course.all
    @teachers = Teacher.all
  end

  # GET /cohorts/new
  def new
    @cohort = Cohort.new
    @student_cohort = StudentCohort.new
    @teachers = Teacher.all
    @courses = Course.all
  end

  # GET /cohorts/1/edit
  def edit
    @teachers = Teacher.all
    @cohort = Cohort.find(params[:id])
    @student_cohorts = StudentCohort.all
    @student_cohort_remove = StudentCohort.find_by(cohort_id: params[:id])

    if TeacherCohort.find_by(cohort_id: params[:id])
      @teacher_cohort = TeacherCohort.find_by(cohort_id: params[:id])
    else 
      @teacher_cohort = TeacherCohort.new
    end

    @student_cohort = StudentCohort.new
    @students = Student.where.not(id: @student_cohorts.each{|student_cohort| student_cohort.student_id})

    if StudentCohort.find_by(cohort_id: params[:id])
      @student_cohort = StudentCohort.find_by(cohort_id: params[:id])
    else 
      @student_cohort = StudentCohort.new
    end
  
  end

  # POST /cohorts
  # POST /cohorts.json
  def create
    @cohort = Cohort.new(cohort_params)
    @teacher_cohort = TeacherCohort.new
    @student_cohort = StudentCohort.new
    @teachers = Teacher.all
    @courses = Course.all

    respond_to do |format|
      if @cohort.save
        format.html { redirect_to @cohort, notice: 'Cohort was successfully created.' }
        format.json { render :show, status: :created, location: @cohort }
      else
        format.html { render :new }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cohorts/1
  # PATCH/PUT /cohorts/1.json
  def update
    @cohort = Cohort.find(params[:id])

    respond_to do |format|
      if @cohort.update(cohort_params)
        format.html { redirect_to @cohort, notice: 'Cohort was successfully updated.' }
        format.json { render :show, status: :ok, location: @cohort }
      else
        format.html { render :edit }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cohorts/1
  # DELETE /cohorts/1.json
  def destroy
    @cohort.destroy
    respond_to do |format|
      format.html { redirect_to cohorts_url, notice: 'Cohort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohort
      @cohort = Cohort.find(params[:id])
    end

    def set_teacher
      @teacher_cohort = TeacherCohort.find_by(cohort_id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cohort_params
      params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :teacher_id)
    end

    def student_cohort_params
      params.require(:cohort_student).permit(:student_id, :cohort_id)
    end

    def student_params
      params.require(:cohort_student).permit(:student_id)
    end

    def teacher_params
      params.require(:cohort_teacher).permit(:teacher_id, :cohort_id)
    end

end
