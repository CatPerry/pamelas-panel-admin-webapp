class PagesController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  
  def home
    #what do I need for a search function?
  end

  def admin 
  end

  def teacher
    @teachers = Teacher.all
    # @teacher = Teacher.find(params[:id])
    # @teacher_cohort = Teacher_Cohort.find(params[:id])
  end

  def student
    @students = Student.all
  end

  def message
    puts "Please enter your username and password"
  end
end
