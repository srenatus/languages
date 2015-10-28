class Chef
  class Resource::LanguageExecute < Resource::LWRPBase
    actions :run
    default_action :run

    attribute :command, kind_of: String, name_attribute: true
    attribute :version, kind_of: String, required: true
    attribute :prefix, kind_of: String

    # Useful attributes from the `execute` resource that might need overriding
    attribute :cwd, kind_of: String
    attribute :environment, kind_of: Hash, default: {}
    attribute :user, kind_of: [String, Integer]
    attribute :returns, kind_of: [Integer, Array], default: 0
    attribute :sensitive, kind_of: [TrueClass, FalseClass], default: false
  end
end
