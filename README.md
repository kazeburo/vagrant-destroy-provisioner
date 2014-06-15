# Vagrant::Destroy::Provisioner

vagrant-destroy-provisioner allows a VM to be destroyed as a provisioning step.

## Installation

    $ vagrant plugin install vagrant-destroy-provisioner

## Usage

    config.vm.provision "destroy", destroy: true

## Option

- destroy: true/false

Destroy VM if true, otherwise only halt is executed. Default is true.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/vagrant-destroy-provisioner/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
