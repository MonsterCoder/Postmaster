class AddRefToPostForReply < ActiveRecord::Migration
  def self.up
    add_column :replies, :post_id, :integer
  end

  def self.down
    remove_column :replies, :post_id,
  end
end
