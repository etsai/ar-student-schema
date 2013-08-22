require_relative '../config'

class CreateGroups < ActiveRecord::Migration 
  def change

    create_join_table :products, :categories do |t|
      t.index :student_id
      t.index :teacher_id
    end
  end
end