Rails.application.routes.draw do
  get 'admin-login', to: 'pages#admin'
  get 'teacher-login', to: 'pages#teacher'
  get 'student-login', to: 'pages#student'
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
