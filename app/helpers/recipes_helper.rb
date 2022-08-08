module RecipesHelper

  def formata_caloria(recipe)
    if recipe.light?
      content_tag(:strong, "Light (less than 100 calories)")
    else
      recipe.calories
    end
  end
end
