module EMEB
  # The version of EventMachine EventBus. The versioning system used is compliant
  # with the expectations set forth in the {http://semver.org Semantic Versioning Standard}.
  module Version

    # The Major Version Number
    MAJOR = '0'
    # The Minor Version Number
    MINOR = '0'
    # The Patch Version Number
    PATCH = '1'

    # Converts the information stored in the Version module into a standards compliant
    # version identification string
    # @return [String] The standard version string
    def self.to_standard_version_s
      [ MAJOR, MINOR, PATCH ].join '.'
    end

  end
end
