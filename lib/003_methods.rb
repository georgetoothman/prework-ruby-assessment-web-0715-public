# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope

  # context 'get_grade' do 
  #   it "returns the grade of a student, given that student's name" do
  #     expect(get_grade(school, "Sophie")).to eq("C")
  #   end
  # end

def get_grade(school, name) 
  school[:students].each do |student|
    if student[:name] == "Sophie"
      return student[:grade]
    end
  end
end

  # context 'update_subject' do
  #   it "udpates an instructor's subject given the instructor and the new subject" do 
  #     update_subject(school, "Jeff", "Ruby on Rails")
  #     expect(school[:instructors][2][:subject]).to eq("Ruby on Rails")
  #   end
  # end

def update_subject(school, instructor_name, new_subject)
  school[:instructors].each do | this |
    if this[:name] == "Jeff"
      this[:subject] = new_subject
    end
  end
end

  # context 'add_new_student' do 
  #   it "adds a new student to the schools student array" do 
  #     add_new_student(school, "Amanda")
  #     expect(school[:students][-1][:name]).to eq("Amanda")
  #   end
  # end

def add_new_student(school)
  school[:students] << [{:name=>"Amanda"}]
end

  # context 'add_new_key' do 
  #   it 'adds a new key at the top level of the school hash, given a key and a value' do
  #   add_new_key(school, :ranking, 1)
  #   expect(school[:ranking]).to eq(1)
  #   end
  # end

def add_new_key(school, key, value)
  school[key.to_sym] = 1
end
