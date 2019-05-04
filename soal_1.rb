# Bisa dicoba online
# di https://repl.it/languages/ruby

require 'json'

class Biodata
  attr_accessor :name, :address, :hobbies, :is_married, :school, :skills

  def initialize(name, address, hobbies, is_married, school, skills)
    @name       = name
    @address    = address
    @hobbies    = hobbies.split(',')
    @is_married = is_married
    @school     = school.split(',')
    @skills     = skills.split(',')
  end

  def get_biodata
    data = {
      "name": name,
      "address": address,
      "hobbies": hobbies,
      "is_married": is_married,
      "school": {
        "highSchool": school[0],
        "university": school[1]
      },
      "skills": skills
    }
  end
end

biodata1 = Biodata.new("Jon", "Bogor", "tidur begadang, main", true, "smk infokom, stmik pranata", "tidur, malas").get_biodata.to_json
biodata2 = Biodata.new("Adul", "Jonggol", "olahjiwa, koding kadang-kadang", false, "smk infokom, stmik pranata", "tidur, malas").get_biodata.to_json
puts biodata1
puts biodata2
