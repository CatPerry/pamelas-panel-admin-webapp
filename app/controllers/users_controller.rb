class UsersController < Application::Controller

  def create
    @user = user_from_params

    if @user.save
      sign_in @user
      redirect_to '/'
    else
      render template: 'users/new'
    end 
  end 

  private

  def user_from_params
  user_params = params[:user] || Hash.new
  email = user_params.delete(:email)
  password = user_params.delete(:password)
  passport_num = user_params.delete(:passport_num)

  #   Clearance.configuration.user_model.new(user_params).tap do |user|
  #     user.email = email
  #     user.password = password
  #     user.passport_num = passport_num
  #   end
  # end

  def passport_num
    passport_num = user_params.delete(:passport_num)
  end

  # def student
  #   current_user.includes? :student_passport
  #   student = true
  # end

  # def teacher
  #   current_user.includes? :teacher_passport
  #   teacher = true
  # end

  # def admin
  #   current_user.includes? :admin_passport
  #   admin = true
  # end

end
