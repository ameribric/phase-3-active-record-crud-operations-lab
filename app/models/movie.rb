class Movie < ActiveRecord::Base

    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def self.create_with_title(title)
        Movie.create(title:title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002(release_date)
        Movie.where(release_date > 2002)
    end

    def self.update_with_attributes(attributes)
        Movie.update(attributes)
    end

    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    def self.delete_by_id
        Movie.destroy
    end

    def self.delete_all_movies
        Movie.destroy_all(title:)
    end


end