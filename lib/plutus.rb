# Plutus
require "rails"

module Plutus
  # ------------------------------ tenancy ------------------------------
  # configuration to enable or disable tenancy
  mattr_accessor :enable_tenancy
  enable_tenancy = true

  mattr_accessor :tenant_class
  tenant_class = 'Account'


  # provide hook to configure attributes
  def self.config
    yield(self)
  end
end

require "plutus/engine"
