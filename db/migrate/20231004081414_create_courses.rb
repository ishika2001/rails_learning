class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :course
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
