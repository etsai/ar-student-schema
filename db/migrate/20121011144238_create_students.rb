require_relative '../config'

# this is where you should use an ActiveRecord migration to 

# :primary_key, :string, :text, :integer, :float, 
#:decimal, :datetime, :timestamp, :time, :date, :binary, :boolean.

=begin 
:integer => ["id"],
      :string => ["first_name", "last_name", "gender", "email", "phone"],
      :date => ["birthday"]
=end
class CreateStudents < ActiveRecord::Migration
  def change

    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :phone
      t.date :birthday
      t.timestamps
    end
  end
end
