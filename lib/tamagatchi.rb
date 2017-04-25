class Tamagatchi

  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10

  end
  define_method(:name) do
    @name
  end
  define_method(:food_level) do
    @food_level
  end
  define_method(:sleep_level) do
    @sleep_level
  end
  define_method(:activity_level) do
    @activity_level
  end
  define_method(:is_alive) do
    if @food_level > 0
      true
    else
      false
    end
  end
  define_method(:set_food_level) do
    @food_level -= 10
  end
  define_method(:time_passes) do
    @food_level -= 1
  end
end

#   define_method(:food_level) do
#     10
#   end
#   define_method(:activity_level) do
#     10
#   end
# end
 #
 #  tams =
 #  {
 #   cat: {hunger:10, sleep:10, activity:10}, dog: {hunger:10, sleep:10, activity:10}, snake: {hunger:10, sleep:10, activity:10}
 # }
