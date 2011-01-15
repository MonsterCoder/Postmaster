class ChangePostTable < ActiveRecord::Migration
  def self.up
    remove_column :posts, :link
   add_column :posts, :subject, :string
    add_column :posts, :forum, :integer
    add_column :posts, :topic, :integer
  end

  def self.down
  end
end
