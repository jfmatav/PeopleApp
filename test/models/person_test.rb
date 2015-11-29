require File.expand_path("../../minitest_helper", __FILE__)

class PersonTest < ActiveSupport::TestCase
  
  describe "Person" do

    describe "must fail" do
      it "must fail" do 
        assert_equal 1, 0
      end
    end

    describe "basic validations" do
      it "only needed attributes are present" do 
        person = FactoryGirl::build(:person)
        assert person.valid?
      end

      it "first_name too long" do 
        long_name = "*" * 76
        person = FactoryGirl::build(:person, first_name: long_name)
        assert !person.valid?
      end

      it "first_name missing" do 
        person = FactoryGirl::build(:person, first_name: nil)
        assert !person.valid?
      end

      it "last_name too long" do 
        long_last_name = "*" * 76
        person = FactoryGirl::build(:person, last_name: long_last_name)
        assert !person.valid?
      end

      it "last_name missing" do 
        person = FactoryGirl::build(:person, last_name: nil)
        assert !person.valid?
      end

      it "email too long" do
        long_email = ("1" * 300) + "@gmail.com"
        person = FactoryGirl::build(:person, email: long_email)
        assert !person.valid?
      end

      it "email missing" do
        person = FactoryGirl::build(:person, email: nil)
        assert !person.valid?
      end

      it "repeated email" do
        person = FactoryGirl::create(:person, email: "new_mail@gmail.com")
        repeated_person = FactoryGirl::build(:person, email: "new_mail@gmail.com")
        assert !repeated_person.valid?
      end

      it "invalid email" do
        invalid_email = "not an email"
        person = FactoryGirl::build(:person, email: invalid_email)
        assert !person.valid?
      end

      it "has a long job description" do
        long_job = "job" * 75
        person = FactoryGirl::build(:person, job: long_job)
        assert !person.valid?
      end

      it "birthdate missing" do
        person = FactoryGirl::build(:person, birthdate: nil)
        assert !person.valid?
      end

      it "future birthdate" do
        future_birthdate = 21.years.from_now
        person = FactoryGirl::build(:person, birthdate: nil)
        assert !person.valid?
      end

    end

  end

end
