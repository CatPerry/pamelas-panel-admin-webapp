class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :set_title

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    @page_title = "Students Page"

  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find(params[:id])
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
    @cohorts = Cohorts.all

    @student_cohorts = StudentCohort.where(student_id: @student.id).map do |student_cohort| 
      student_cohort.student_id
    end
    @cohorts = Cohort.where(cohort_id: @cohort.id).map do |cohort| 
      cohort.cohort_id
    end
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_student_cohort
    student_cohort = StudentCohort.new(
    student_id: params[:student_id],
    cohort_id: params[:cohort_id]
    )

    if student_cohort.save
      flash[:info] = "Everything good"
    else
      flash[:error] = "Everything bad"
    end

    redirect_to edit_student_path(params[:student_id])
  end

  def add_cohort
    cohort = Cohort.new(
    cohort_id: params[:cohort_id]
    )

    if cohort.save
      flash[:info] = "Everything good"
    else
      flash[:error] = "Everything bad"
    end

    redirect_to edit_student_path(params[:cohort_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    def student_passport
      "S" + rand(10000...199999).to_s
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:first_name, :last_name, :age, :education, :image)
    end
end
