module VagrantPlugins
  module Destroy
    class Provisioner < Vagrant.plugin("2", :provisioner)
      def initialize(machine, config)
        super
        @logger = Log4r::Logger.new("vagrant::provisioners::destroy")
      end

      def provision
        options = {}
        if config.destroy
            options[:force_confirm_destroy] = true
            @logger.info("VM is going to destroy");
            @machine.action(:destroy, options)
        else
            @logger.info("VM is going to halt");
            @machine.action(:halt, options)
        end
        begin
          sleep 2
        end while @machine.communicate.ready?
      end
    end
  end
end
