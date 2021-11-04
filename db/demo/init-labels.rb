require_relative 'dishes-omni'

DIETS = HealthLabel.labels[:diets]
ALLERGIES = HealthLabel.labels[:allergies]
MACROS = HealthLabel.labels[:macros]

def init_labels(labels, dish)
  dhls = labels.select { |label| DIETS.include?(label) || ALLERGIES.include?(label) || MACROS.include?(label) }

  dhls.each do |label|
    dish_label = HealthLabel.find_by(name: label) || HealthLabel.create(name: label)
    case
    when ALLERGIES.include?(label)
      dish_label.category = :allergy
    when MACROS.include?(label)
      dish_label.category = :macro
    when DIETS.include?(label)
      dish_label.category = :diet
    end
    dish_label.save!

    dhl = DishHealthLabel.new(dish_id: dish.id, health_label_id: dish_label.id)
    dhl.save!
  end
end

