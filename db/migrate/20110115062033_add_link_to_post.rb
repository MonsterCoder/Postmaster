class AddLinkToPost < ActiveRecord::Migration
  def self.up
    add_column  :posts, :link, :string
  end

  def self.down
    remove_column :posts, :link
  end
end
