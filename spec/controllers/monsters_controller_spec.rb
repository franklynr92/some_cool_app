decribe MonstersController, type: :controller do
    let(:monster) { Monster.find_by(name: "Dustwing") }

    it "creates a monster" do
        expect(monster).to_not be_nil
      end
     
      it "redirects to the new monster's page" do
        expect(current_path).to eq(monster_path(monster))
      end

      it "displays the monster's name" do
        within "h1" do
          expect(page).to have_content(monster.name)
        end
      end
end
=begin
let(:attributes) do
        {
            name: "Dustwing",
            size: "tiny",
            taxonomy: "Abradacus nonexistus"
        }
    end
    
    it "renders the show template" do 
        monster = Monster.create!(attributes)
        get :show, id: monster.id
        expect(respone).to render_template(:show)
    end

    describe "creation" do
        before { post :create, monster: attributes}
        let(:monster) { Monster.find_by(name: "Dustwing")}

        it "creates a new monster" do
            expect(monster).to_not be_nil
        end
        
        it "redirects to the monster's show page" do
            expect(response).to redirect_to(monster_path(monster))
        end
    end
=end