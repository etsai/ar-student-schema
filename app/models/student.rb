require_relative '../../db/config'

class Student < ActiveRecord::Base

  validates :email,
            :presence => true,
            :uniqueness => true,
            format: { with: /.[@]..+[\.]../}

  validates :phone, length: { minimum: 10 }

  validates :age, numericality: { greater_than: 5 }

  def age
   now = Time.now
   now.year - birthday.year - ((now.month > birthday.month ||
    (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end

  def name
    "#{first_name} #{last_name}"
  end 

end

  # validates :email, uniqueness: true
  # validates :email, format: { with: /\w+@\w+.\w{2,}/, message: 'invalid email'}
  # validates :age, numericality: { greater_than: 5 }
  # # validate :validate_phone

  # def name
  #   self.first_name + ' ' + self.last_name
  # end

  # def age
  #   bday_string = self.birthday.to_date
  #   # bday = bday_string.match(/\d.+/)[0]
  #   # bday_date = Date.strptime(bday, '%d %b %Y')
  #   now = Date.today
  #   ((now - bday_string)/365.25).to_i
  # end
  
  # def validate_phone
  #   unless phone.count('1234567890') >= 10
  #     errors.add(:base, 'invalid phone number')
  #   end
  # end
  
