Factory.define :registration do |factory|
  factory.twitter { 'Croaky'    }
  factory.name    { 'Dan Croak' }
  factory.school  { 'Nobles'    }
  factory.role    { 'Developer' }
end

Factory.define :school do |factory|
  factory.name { 'School of the Museum of Fine Arts, Boston' }
end
