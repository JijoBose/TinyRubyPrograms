class Cake
  def initialize(batter)
    @batter = batter
    @baked = true
    puts "cake baked"
  end
end

class Egg
end

class Flour
end

class Baker
  def bake_cake
    @batter = []
    pour_flour
    add_egg
    stir_batter
    return Cake.new(@batter)
  end

  def pour_flour
    @batter.push(Flour.new)
    puts "Added flour"
  end

  def add_egg
    @batter.push(Egg.new)
    puts "added egg"
  end

  def stir_batter
    puts "added stir_batter"
  end
  private :pour_flour, :add_egg, :stir_batter
end

mixer = Baker.new
mixer.bake_cake
