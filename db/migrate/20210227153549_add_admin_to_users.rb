class AddAdminToUsers < ActiveRecord::Migration[6.1]
  def up
    add_reference :tasks, :user, index: true
  end

  def down 
    remove_reference :tasks, :user, index: true
  end
end
