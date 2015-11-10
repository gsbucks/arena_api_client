module ArenaApi
  class File < Resource
    # attribute :author,           Reference #The author of a file. Contains the attribute fullName.
    # attribute :category,         Reference #The category to which the file is assigned Contains guid attribute
    # attribute :creationDateTime, String #The date and time a file was created
    # attribute :description,      String #The description of a file
    # attribute :edition,          String #The edition identifier of a file
    # attribute :format,           String #The format of a file (e.g. PDF, docx)
    # attribute :guid,             String #The unique identifier for a file
    # attribute :hasMarkup,        Boolean  #Indicates whether or not a file has a markup.
    # attribute :lastModification, DateTime #String   The date and time a file was modified
    # attribute :latest,           Boolean  #Indicates whether or not a file is the latest edition. The value can be true or false.
    # attribute :location,         String  #The url of a file (www.arenasolutions.com when stored on Arena servers)
    # attribute :mimeType,         String  #The mime type of a file.
    # attribute :name,             String  #The name of a file
    # attribute :number,           String  #The number of a file
    # attribute :size,             Long    #The size of a file
    # attribute :storageMethod,    Integer #Indicates whether or not a file is stored on the Arena servers. The value can be -1 (place holder), 0 (uploaded), 2 (ftp link), 3 (web link).
    # attribute :title,            String  #The title of a file
  end
end

