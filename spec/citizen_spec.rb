require_relative "../citizen"

describe Citizen do
    it "exists as a Class" do
        citizen    = Citizen.new
        class_name = citizen.class

        expect(class_name).to eq (Citizen)
    end
end
