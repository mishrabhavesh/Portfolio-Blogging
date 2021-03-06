class Portfolio < ApplicationRecord
    include Placeholder
    has_many :technologies
    accepts_nested_attributes_for :technologies,
                                    reject_if: lambda {|attrs| attrs['name'].blank? }
    validates_presence_of :title, :body, :main_image, :thumb_image
    scope :angular, -> { where(:subtitle => "Angular")}
    # Ex:- scope :active, -> {where(:active => true)}
    after_initialize :set_defaults

    
    def set_defaults
        self.main_image ||= Placeholder.set_image(height: 600,width: 400)
        self.thumb_image ||= Placeholder.set_image(height: 350,width: 200)
    end
    def self.by_position
        order("position ASC")
    end

end