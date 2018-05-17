class AddStudentPassportColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :student_passport, :string
  end
end
