class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t| #t stands for table
      t.string :name #creates field for names
      t.string :email

      t.timestamps
    end
  end
end
