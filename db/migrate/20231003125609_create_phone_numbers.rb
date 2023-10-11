class CreatePhoneNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :phone_numbers do |t|
      t.integer :mobile
      t.integer :telephone
      t.belongs_to :people, index: true, foreign_key: true
      t.timestamps
    end
  end
end
