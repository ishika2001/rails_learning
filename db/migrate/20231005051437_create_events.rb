class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :tagline

      t.timestamps
    end
  end
end
