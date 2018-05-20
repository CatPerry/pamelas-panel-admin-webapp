class PagesController < ApplicationController
  # before_action :set_student, only: [:show, :edit, :update, :destroy]
  # before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  before_action :set_title

  def home
    @teachers = Teacher.all
    @students = Student.all
    @admins = Admin.all
  end

  def admin 
    @teachers = Teacher.all
    @students = Student.all
    @admins = Admin.all
    # current_user.includes? :admin_passport
    # admin = true
    @page_title = "Admins' Page SchoolHub"

  end

  def teacher
    @teachers = Teacher.all
    @page_title = "Teachers' Page SchoolHub"

    # current_user.includes? :teacher_passport
    # teacher = true
    # @teacher = Teacher.find(params[:id])
    # @teacher_cohort = Teacher_Cohort.find(params[:id])
  end

  def student
    @page_title = "Students' Page SchoolHub"
    @students = Student.all
    @current_user
    @user
    # current_user.includes? :student_passport
    # student = true
    
  end

end
