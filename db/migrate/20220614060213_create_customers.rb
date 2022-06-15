# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact
      t.date :birth_date
      t.text :address
      t.string :is_deleted

      t.timestamps
    end
  end
end
