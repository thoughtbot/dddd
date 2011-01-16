Factory.sequence :handle do |sequence|
  "Croaky#{sequence}"
end

Factory.define :registration do |factory|
  factory.name        { 'Dan Croak' }
  factory.school_name { 'School of the Museum of Fine Arts, Boston' }
  factory.role        { 'Developer' }
end

Factory.define :school do |factory|
  factory.name { 'School of the Museum of Fine Arts, Boston' }
end

Factory.define :startup do |factory|
  factory.name        { 'Heroku' }
  factory.description { 'Deploy' }
end

Factory.define :talk do |factory|
  factory.name { 'Ship It' }
  factory.speaker_name { 'Ben Scofield' }
  factory.speaker_bio  { 'Developer advocate at Heroku' }
  factory.abstract do
    "The second most important thing you can do is ship something good. The most important thing you can do? Ship something."
  end
end

Factory.define :resource do |factory|
  factory.association(:talk)
  factory.name { 'Quieting the Lizard Brain' }
  factory.url  { 'http://vimeo.com/5895898'  }
  factory.description do
    "In this 18-minute video, Seth Godin entertains on the topic of shipping."
  end
end
