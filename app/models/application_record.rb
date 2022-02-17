class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  connects_to shards: {
    nl: { writing: :nl, reading: :nl },
    uk: { writing: :uk, reading: :uk }
  }
end
