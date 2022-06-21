# frozen_string_literal: true

class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :account_type
      t.float :balance
      t.references :customer, null: false, foreign_key: true
      t.integer :status
      t.string :description

      t.timestamps
    end
  end
end
