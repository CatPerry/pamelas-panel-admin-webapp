Rails.application.routes.draw do
  
  devise_for :teachers, path: '', path_names: {sign_in: 'teacher-login', sign_out: 'teacher-logout', sign_up: "teacher-register"}
  devise_for :students, path: '', path_names: {sign_in: 'student-login', sign_out: 'student-logout', sign_up: "student-register"}
  devise_for :admins, path: '', path_names: {sign_in: 'admin-login', sign_out: 'admin-logout', sign_up: "admin-register"}

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

end
