class CreateUserDefineds < ActiveRecord::Migration
  def change
    create_table :user_defineds do |t|

      t.timestamps
    end
  end
end
