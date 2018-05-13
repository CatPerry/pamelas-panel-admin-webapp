Rails.application.routes.draw do
  resources :student_cohorts
  resources :teacher_cohorts
  resources :students
  resources :cohorts
  resources :teachers
  resources :courses
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
