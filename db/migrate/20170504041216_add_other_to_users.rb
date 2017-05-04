class AddOtherToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string
  end

  def self.up
    add_column :users, :avatar_content_type, :string
     change_table :users do |t|
       t.attachment :avatar
     end
  end


  def self.down
    remove_column :users, :avatar_content_type
    drop_attached_file :users, :avatar
  end

  def self.up
  add_column :users, :avatar_file_name,    :string

  add_column :users, :avatar_file_size,    :integer
  add_column :users, :avatar_updated_at,   :datetime
end

def self.down
  remove_column :users, :avatar_file_name

  remove_column :users, :avatar_file_size
  remove_column :users, :avatar_updated_at
end

end
