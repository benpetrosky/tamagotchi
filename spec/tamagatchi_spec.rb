require('rspec')
require('tamagatchi')

describe(Tamagatchi) do
  describe("#my_pet") do
    it("sets the name and life levels of a new Tamagatchi") do
      my_pet = Tamagatchi.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe(".all") do
      it("is empty at first") do
        expect(Tamagatchi.all()).to(eq([]))
      end
    end

    describe("#save") do
        it("adds a location to the array of saved location") do
        test_tamagatchi = Tamagatchi.new("Vancouver")
        test_tamagatchi.save()
        expect(Tamagatchi.all()).to(eq([test_tamagatchi]))
        end
      end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagatchi.new("lil dragon")
      expect(my_pet.is_alive()).to(eq(true))
    end
  end

  it("is dead if the food level is 0") do
    my_pet = Tamagatchi.new("lil dragon")
    my_pet.set_food_level() #make a method that will change the food level of your tamagotchi.
    expect(my_pet.is_alive()).to(eq(false))
  end

#
describe("#time_passes") do
  it("decreases the amount of food the Tamagatchi has left by 1") do
    my_pet = Tamagatchi.new("lil dragon")
    my_pet.time_passes()  #decide what trigger you will use to make time pass
    expect(my_pet.food_level()).to(eq(9))
  end
end
end
