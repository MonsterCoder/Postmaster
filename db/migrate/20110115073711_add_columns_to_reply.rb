class AddColumnsToReply < ActiveRecord::Migration
  def self.up
    add_column :replies, :membername, :string
    add_column :replies, :password, :string
    add_column :replies, :inpost, :string
  end

  def self.down
  end
end
