# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :full_name
      t.string :phone
      t.string :sex
      t.string :address
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
