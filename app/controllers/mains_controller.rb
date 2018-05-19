class MainsController < ApplicationController

  resources :photos, only: [:index, :show, :edit]

  # def teacher
  #   @teachers = Teacher.all
  #   def user_params
  #     params[:user].permit(:email, :password, :student_passport)
  #   end

  #   def edit
  #   end

  #   def update
  #   respond_to do |format|
  #     if @teacher.update(teacher_edit_params)
  #       format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
  #     else
  #       format.html { render :edit }
  #     end
  #   end

  #   def teacher_edit_params
  #   params.require(:teacher).permit(:image)
  #   end

  # end

  # def student
  #   @students = Student.all
  #   private

  #   def user_params
  #     params[:user].permit(:email, :password, :student_passport)
  #   end

  # end
end

