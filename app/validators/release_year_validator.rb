class ReleaseYearValidator < ActiveModel::Validator
     
    def validate(record)
        if record.released && !record.release_year
            record.errors[:release_year] << "must have a release year"
        elsif record.released && record.release_year > Time.now.year.to_i
            record.errors[:release_year] << "can not be in future"
        end

    end

end