Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "lucid64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host only network IP, allowing you to access it
  # via the IP.
  config.vm.network "33.33.33.10"

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port "http", 80, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  # Enable provisioning with chef solo, specifying a cookbooks path (relative
  # to this Vagrantfile), and adding some recipes and/or roles.
  #
   config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = ["books"]
     chef.add_recipe  "apt"
     chef.add_recipe  "build-essential"
     chef.add_recipe  "emacs"
     chef.add_recipe  "git"
     chef.add_recipe  "boost"
     chef.add_recipe "apache2"
     chef.add_recipe  "openssl"
     chef.add_recipe "mongodb::install"
     chef.add_recipe "mongodb::configure"
     chef.add_recipe  "rvm::install"
     chef.add_recipe "couchdb::source"
     chef.add_recipe "our_gems"
     chef.add_recipe "redis"

     #chef.log_level = :debug

     chef.json.merge!({
       :rvm => {
         :ruby => { :implementation => "ruby", :version => "1.9.2" }
       },
       :couch_db => {
         :src_version  => "1.1.0",
         :src_mirror   => "http://mirror.rmg.io/apache//couchdb/1.1.0/apache-couchdb-1.1.0.tar.gz",
         :src_checksum => "7cb6a12f3becaae4eeb8ee75b15fbe6395fa7a98"
       },
     })

   end

end
