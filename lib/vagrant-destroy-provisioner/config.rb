module VagrantPlugins
  module Destroy
    class Config < Vagrant.plugin("2", :config)
      attr_accessor :destroy

      def initialize
        @destroy = UNSET_VALUE
      end

      def finalize!
        @destroy = true if @destroy == UNSET_VALUE
      end

      def validate(machine)
        errors = _detected_errors
        { "destroy provisioner" => errors }
      end

    end
  end
end

