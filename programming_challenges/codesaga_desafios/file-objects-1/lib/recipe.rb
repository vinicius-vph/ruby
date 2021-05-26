class Recipe
  attr_accessor :title, :description, :ingredients, :cook_time, :featured

  def initialize(string)
      self.title = string[:title]
      self.description = string[:description]
      self.ingredients = string[:ingredients]
      self.cook_time = string[:cook_time]
      self.featured = string[:featured]
  end
  
  def self.from_json(file_data)
    json_object = JSON.parse(File.read(file_data),{symbolize_names: true})
    self.new(json_object)
  end
end
