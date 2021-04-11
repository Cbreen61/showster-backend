class Show < ApplicationRecord
    has_many :characters


    def self.arr_to_json
        self.all.map do |s|
            s.instance_to_json
        end
    end

    def instance_to_json
        {   id: self.id,
            title: self.title,
            status: self.status,
            release_date: self.release_date,
            seasons: self.seasons,
            likes: self.likes,
            dislikes: self.dislikes,
            description: self.description,
            image: self.image,
            characters: self.characters.arrc_to_json
        }
    end

end
