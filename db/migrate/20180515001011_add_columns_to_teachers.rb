class AddColumnsToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :image, :text
    add_reference :teachers, :teacher, foreign_key: true
  end
end
