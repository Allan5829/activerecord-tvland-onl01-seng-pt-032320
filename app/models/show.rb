class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
<<<<<<< HEAD
  belongs_to :network

  def actors_list
    array = []
    Character.all.each do |own|
      chara = Character.find(own.id)
      actor = Actor.find(chara.actor_id)
      array << "#{actor.first_name} #{actor.last_name}"
    end
    array
=======

  def actors_list
    Character.all? { |e|  }.each do |own|
      character = Character.find(own.id)
      actor = Actor.find(character.id)
      "#{actor.first_name} #{actor.last_name}"
    end
>>>>>>> 01940ef9c166412d8dbcb61afe29f117b169c421
  end

end
