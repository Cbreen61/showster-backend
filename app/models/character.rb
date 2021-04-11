class Character < ApplicationRecord
  belongs_to :show


  def self.arrc_to_json
        self.all.map do |c|
            c.instance_to_json
        end
    end


    def instance_to_json
        {   id: self.id,
            name: self.name,
            status: self.status,
            species: self.species,
            description: self.description,
            likes: self.likes,
            dislikes: self.dislikes,
            show: self.show.title
        }
    end

end
