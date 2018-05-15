class AddColumnsToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :image, :text
    add_reference :students, :student, foreign_key: true
  end
end
