Rails.application.routes.draw do
  
  get 'admin-portal', to: 'pages#admin'
  get 'teacher-portal', to: 'pages#teacher'
  get 'student-portal', to: 'pages#student'
  # get 'teacher-main', to: 'mains#teacher'
  # get 'student-main', to: 'mains#student'
  
  resources :student_cohorts
  resources :teacher_cohorts
  resources :students
  resources :cohorts
  resources :teachers
  resources :courses
  resources :admins

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :passport_num)
  end

  def student
    current_user.includes? :student_passport
    student = true
  end

  def teacher
    current_user.includes? :teacher_passport
    teacher = true
  end

  def admin
    current_user.includes? :admin_passport
    admin = true
  end
  

  constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
    get "/admin-login" => "admin/dashboards#show"
  end

  constraints Clearance::Constraints::SignedIn.new { |user| user.teacher? } do
    get "/teacher-login" => "mains#teacher"
    resources :mains, only: :teacher
  end

  constraints Clearance::Constraints::SignedIn.new { |user| user.student? } do
    get "/student-login" => "mains#student"
    resources :mains, only: :student
  end


end
