require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :students

  validates :email,
            :presence => true,
            :uniqueness => true,
            format: { with: /.[@]..+[\.]../}

  validates :phone, 
            length: { minimum: 10 }

  def name
    "#{first_name} #{last_name}"
  end 

end
