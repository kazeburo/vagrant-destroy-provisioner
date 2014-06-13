
module VagrantPlugins
  module Destroy
    class Plugin < Vagrant.plugin("2")

      name "Destroy"
      description <<-DESC
      vagrant-destroy-provisioner allows a VM to be destroyed as a provisioning step.
      DESC
      
      provisioner "destroy" do
        class Provisioner < Vagrant.plugin("2", :provisioner)

          def initialize(machine, config)
            super
          end

          def configure(root_config)
          end

          def provision
            options = {}
            options[:force_confirm_destroy] = true
            @machine.action(:destroy, options)
            begin
              sleep 2
            end while @machine.communicate.ready?
          end

          def cleanup
          end

        end
        Provisioner

      end
    end
  end
end

