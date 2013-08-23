class ReplaceFirstAndLastNameWithNameInStudents < ActiveRecord::Migration
  def up
    add_column :students, :name, :text
    add_column :students, :address, :text

    Student.all.each do |student|
      puts student.full_name
      student[:name] = student.full_name
      student.save!
      puts "after save"
      puts student[:name]
    end

    remove_column :students, :first_name
    remove_column :students, :last_name
  end

  def down
    add_column :students, :first_name, :text
    add_column :students, :last_name, :text

    Student.all.each do |student|
      name = student.name.split
      student[:first_name] = name[0...-1].join
      student[:last_name] = name[-1]
      student.save!
    end

    remove_column :students, :name
    remove_column :students, :address
  end
end
