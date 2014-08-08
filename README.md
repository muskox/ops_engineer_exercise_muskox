# KISSmetrics Operations Engineer Technical Exercise

## Setup 

1. Download and Install [Virtual Box](https://www.virtualbox.org/wiki/Downloads).

2. Download and Install [Vagrant](http://downloads.vagrantup.com/) version 1.3.0 or greater.

3. Clone this repository. `git clone http://shady-git.ernest.ly/ops-engineer-exercise/`

4. Choose a box type (CentOS 6 or Ubuntu 12.04) `cp Vagrantfile.{centos,ubuntu} Vagrantfile`

5. `vagrant up`

6. Grab some coffee? Downloading the box and initial bootstrap may take a while

## Note

`vagrant up` and `vagrant provision` are very noisy because of the Vagrantfile configurations. if you prefer you can disable the s.verbose option, and perform a `vagrant ssh` followed by a `sudo salt-call state.highstate`.


## Tasks your final salt states should perform

1. Add yourself as a user to the configuration

2. Configure your user, and ewdurbin user with passwordless sudoers priveleges

3. Install nginx

4. Configure a simple nginx server which writes access logs to `/var/log/nginx/service/access.log`

5. Configure logrotate to run every hour and rotate `/var/log/nginx/service/access.log`


## Expectations

Perform as much of the above as you can within 2 hours.

This is a git repository, commit often and let us see your progress.

You may choose to work with Ubuntu 12.04 or CentOS 6, or for **bonus** have one setup which will work with both.

Submissions can either be a fork of this repository on github.com, or a tarball of the git repo emailed to edurbin@kissmetrics.com
