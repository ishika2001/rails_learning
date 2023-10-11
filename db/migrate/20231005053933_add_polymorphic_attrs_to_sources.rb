class AddPolymorphicAttrsToSources < ActiveRecord::Migration[7.0]
  def change
    add_column :sources, :sourceable_type, :string
    add_column :sources, :sourceable_id, :integer
    remove_column :sources, :article_id, :integer
    remove_column :sources, :news_id, :integer
    remove_column :sources, :event_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
