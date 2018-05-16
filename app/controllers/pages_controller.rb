class PagesController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  
  # enable :sessions
  # set :sessions, true
  #the session createa a cookie that is handled by the browser

  def home
    #what do I need for a search function?
  end

  def admin
    # if session[:user_id]
    # erb :index
    # else
    #   erb :signed_out_homepage
    # end 
    # erb :index
  
    # @admins = Admin.all
    # @admin = Admin.find(params[:id])
   
  end

  def teacher
    @teachers = Teacher.all
    # @teacher = Teacher.find(params[:id])
    # @teacher_cohort = Teacher_Cohort.find(params[:id])
    # if session[:user_id]
    # erb :index
    # else
    #   erb :signed_out_homepage
    # end 
    # erb :index
  end

  def student
    @students = Student.all

    # if session[:user_id]
    # erb :index
    # else
    #   erb :signed_out_homepage
    # end 
    # erb :index
  end

  def message
    puts "Please enter your username and password"
  end
end
