class AddStudentIdToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_column :cohorts, :student_id, :integer
  end
end
