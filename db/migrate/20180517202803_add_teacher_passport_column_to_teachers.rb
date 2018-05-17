class AddTeacherPassportColumnToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :teacher_passport, :string
  end
end
