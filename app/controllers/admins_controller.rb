class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
    @teachers = Teacher.all
    @students = Student.all
    @couses = Course.all
    @cohorts = Cohort.all
    @student_cohorts = StudentCohort.all
    @teacher_cohorts = TeacherCohort.all
    @admins = Admin.all
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
    @course = Course.new
    @cohort = Cohort.new
    @student = Student.new
    @teacher = Teacher.new
    @student_cohort = Student.new
    @teacher_cohort = Teacher.new
    
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

#   # POST /teachers
#   # POST /teachers.json
#   def create
#     @teacher = Teacher.new(params.require(:teacher).permit(:first_name, :last_name, :age, :salary, :education, :image))
# )
#     respond_to do |format|
#       ##I'm going to redirect later on to a an ADMIN TEACHERS SUBPAGE WHEN I MAKE IT. See vid 047, to modify teachers_path. and check out the deep dive in that section. 
#       if @teacher.save
#         format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
#         format.json { render :show, status: :created, location: @teacher }
#       else
#         format.html { render :new }
#         format.json { render json: @teacher.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # POST /students
#   # POST /students.json
#   def create
#     @student = Student.new(params.require(:student).permit(:first_name, :last_name, :age, :education, :image))
# )

#     respond_to do |format|
#       if @student.save
#         format.html { redirect_to @student, notice: 'Student was successfully created.' }
#         format.json { render :show, status: :created, location: @student }
#       else
#         format.html { render :new }
#         format.json { render json: @student.errors, status: :unprocessable_entity }
#       end
#     end
#   end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
      @course = Course.find(params[:id])
      @cohort = Cohort.find(params[:id])
      @student = Student.find(params[:id])
      @teacher = Teacher.find(params[:id])
      @student_cohort = Student_Cohort.find(params[:id])
      @teacher_cohort = Teacher_Cohort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:username, :password)
    end
end
