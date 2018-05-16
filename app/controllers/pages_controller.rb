class PagesController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  
  def home
    #what do I need for a search function?
  end

  def admin
    @courses = Course.all
    @cohorts = Cohort.all
    @teachers = Teacher.all
    @students = Student.all
    @student_cohorts = StudentCohort.all
    @teacher_cohorts = TeacherCohort.all
    @admins = Admin.all
    # @admin = Admin.find(params[:id])
    # @course = Course.find(params[:id])
    # @cohort = Cohort.find(params[:id])
    # @student = Student.find(params[:id])
    # @teacher = Teacher.find(params[:id])
    # @student_cohort = Student_Cohort.find(params[:id])
    # @teacher_cohort = Teacher_Cohort.find(params[:id])
  end

  def teacher
    @teachers = Teacher.all
  end

  def student
    @students = Student.all
  end
end
