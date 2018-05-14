class PagesController < ApplicationController
  def home
  end

  def admin
    @teachers = Teacher.all
    @students = Student.all
    @couses = Course.all
    @cohorts = Cohort.all
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
  end

  def student
  end
end
