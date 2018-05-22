class AddCohortIdToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :cohort_id, :integer
  end
end
