class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
# class AddDetailsToProducts < ActiveRecord::Migration[7.0]
#   def change
#     add_column :products, :price, :decimal, precision: 5, scale: 2
#     add_reference :products, :supplier, polymorphic: true
#   end
# end
