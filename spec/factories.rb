Factory.sequence :handle do |sequence|
  "Croaky#{sequence}"
end

Factory.define :registration do |factory|
  factory.twitter     { Factory.next(:handle) }
  factory.name        { 'Dan Croak' }
  factory.school_name { 'School of the Museum of Fine Arts, Boston' }
  factory.role        { 'Developer' }
end

Factory.define :school do |factory|
  factory.name { 'School of the Museum of Fine Arts, Boston' }
end
