require_relative '../config'

class CreateStudentsAndTeachers < ActiveRecord::Migration

  def change
    create_table :students_teachers do |t|
      t.belongs_to :student
      t.belongs_to :teacher
    end
  end

end
