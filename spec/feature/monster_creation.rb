describe "monster creation", type: :feature do
    before do
        visit new_monster_path
        fill_in "Name", with: "Dustwing"
        select "tiny", from: "monster_size"
        fill_in "Taxonomy", with: "Abradacus nonexistus"
        click_button "Create Monster"
    end
end