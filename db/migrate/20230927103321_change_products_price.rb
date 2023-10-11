# class ChangeProductsPrice < ActiveRecord::Migration[7.0]
#   def change
#     reversible do |direction|
#       change_table :products do |t|
#         direction.up   { t.change :price, :string }
#         direction.down { t.change :price, :integer }
#       end
#     end
#   end
# end


#ALTERNATE
class ChangeProductsPrice < ActiveRecord::Migration[7.0]
  def up
    change_table :products do |t|
      t.change :price, :string
    end
  end

  def down 
    change_table :products do |t|
      t.change :price, :integer
    end
  end
end
