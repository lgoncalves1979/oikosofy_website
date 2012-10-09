class Package
  include MongoMapper::Document

  key :title, String
  key :description, String
  key :full_description, String
  key :friendly_code, String

end
