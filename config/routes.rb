Rails.application.routes.draw do
 

  get 'admin-portal', to: 'pages#admin'
  get 'teacher-portal', to: 'pages#teacher'
  get 'student-portal', to: 'pages#student'
  # get 'teacher-main', to: 'mains#teacher'
  # get 'student-main', to: 'mains#student'
  
  resources :student_cohorts
  resources :teacher_cohorts
  resources :students
  resources :cohorts do
    # aS gives you acces to file path
    get "/course/:course_id", to: "cohorts#add_cohort", as: "add_course" 
  end
  resources :teachers
  resources :courses 

  resources :admins

  root to: 'admins#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
