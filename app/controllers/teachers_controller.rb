class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  before_action :set_title

  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.all
    @cohorts = Cohort.all
    @page_title = "Teachers Page"
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
    @teacher = Teacher.find(params[:id])
  
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
    @cohorts = Cohort.all
  end

  # GET /teachers/1/edit
  def edit
    @teacher = Teacher.find(params[:id])
    @cohorts = Cohort.all

    @teacher_cohorts = TeacherCohort.where(teacher_id: @teacher.id).map do |teacher_cohort| 
      student_cohort.student_id
    end
    @cohorts = Cohort.where(cohort_id: @cohort.id).map do |cohort| 
      cohort.cohort_id
    end
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)
    @cohorts = Cohort.all
    @teacher_cohort = TeacherCohort.all


    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_cohort
    teacher_cohort = TeacherCohort.new(
    teacher_id: params[:teacher_id],
    cohort_id: params[:cohort_id]
    )

    if teacher_cohort.save
      flash[:info] = "Everything good"
    else
      flash[:error] = "Everything bad"
    end

    redirect_to edit_teacher_path(params[:teacher_id])
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    def teacher_passport
      "T" + rand(10000...199999).to_s
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:first_name, :last_name, :age, :salary, :education, :image, :cohort_id)
    end

    

end
