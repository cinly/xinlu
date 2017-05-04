class AddOtherToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string
  end

  def self.up
    change_table :users do |t|
      t.attachment :avatar
    end
    add_column :users, :avatar_file_name,    :string
    add_column :users, :avatar_content_type, :string
    add_column :users, :avatar_file_size,    :integer
    add_column :users, :avatar_updated_at,   :datetime
  end

  def self.down
    drop_attached_file :users, :avatar
    remove_column :users, :avatar_file_name
    remove_column :users, :avatar_content_type
    remove_column :users, :avatar_file_size
    remove_column :users, :avatar_updated_at
  end
end
