require_relative "../citizen"

describe Citizen do
    it "exists as a Class" do
        class_name = Citizen.class

        # actual                expected
        expect(class_name).to eq (Class)
    end

    it "should have a first name" do
        test_citizen = Citizen.new("Francesca","", 29)
        citizen_name = test_citizen.first_name

        expect(citizen_name).to eq ("Francesca")
    end

    it "should have a last name" do
        test_citizen = Citizen.new(" ", "Milk", 29)
        citizen_name = test_citizen.last_name

        expect(citizen_name).to eq ("Milk")
    end

    describe "can_vote?" do
        it "should return true if 18 or older" do
            test_citizen = Citizen.new(" ", "Milk", 29)
            citizen_vote = test_citizen.can_vote?
            
            expect(citizen_vote).to eq (true)
        end
    end

    describe "can_vote?" do
        it "should return false if younger than 18" do
            test_citizen = Citizen.new(" ", "Milk", 17)
            citizen_vote = test_citizen.can_vote?

            expect(citizen_vote).to eq (false)
        end
    end

    describe "full_name" do
        it "should return full name capitalized" do
            test_citizen = Citizen.new("francesca", "milk", 29)
            citizen_full_name = test_citizen.full_name
            
            expect(citizen_full_name).to eq ("Francesca Milk")
        end
    end

end
