describe Monster do
    let(:attributes) do
    {
        name: "Dustwing",
        size: "tiny",
        taxonomy: "Abradacus nonexistus"
    }
    end

    it "is considered valid" do
        expect(Monster.new(attributes)).to be_valid
    end
end