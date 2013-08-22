#require 'rspec'
require 'date'
require_relative '../app/models/teacher'

    @teacher = Teacher.new

    @teacher.assign_attributes(
      :first_name => "Kreay",
      :last_name => "Shawn",
      :birthday => Date.new(1989,9,24),
      :gender => 'female',
      :email => 'kreayshawn@oaklandhiphop.net',
      :phone => '(510) 555-1212 x4567'
    )

    p @teacher