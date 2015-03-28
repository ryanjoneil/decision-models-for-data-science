VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "ubuntu/trusty64"
	config.vm.box_check_update = true

	config.vm.provision :shell, :inline => "
		apt-get update
		apt-get install -y \
			glpk-utils \
			libblas-dev \
			liblapack-dev \
			python3-matplotlib \
			python3-numpy \
			python3-pip \
			python3-scipy
		pip3 install \
			cvxopt==1.1.7 \
	 		ipython[all]==3.0.0 \
	 		pulp==1.5.6 \
	 		scikit-learn==0.16.0
	"

	config.vm.synced_folder ".", "/home/vagrant/decision-models-for-data-science"
	config.vm.network "forwarded_port", guest: 8888, host: 8888, auto_correct: true
end
