require "vagrant"

module VagrantPlugins
  module Destroy
    class Plugin < Vagrant.plugin("2")
      name "Destroy Provisoner"
      description <<-DESC
      vagrant-destroy-provisioner allows a VM to be destroyed as a provisioning step.
      DESC

      config(:destroy, :provisioner) do
        require_relative 'config'
        Config
      end

      provisioner(:destroy) do
        require_relative 'provisioner'
        Provisioner
      end
    end
  end
end

