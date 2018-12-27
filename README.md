Raspberry Pi Chef Bootstrap
===========================

Scripts I used to Bootstrap a Pi to run Chef

Chef installation is based off of - https://github.com/facastagnini/raspberry-bitcoin/blob/master/bootstrap.sh


Usage
=====
1. Prepare the Pi by installing Raspbian and enabling SSH using raspi-config -
https://www.raspberrypi.org/documentat\ion/remote-access/ssh/

2. SSH in and create a /chef/ dir with the appropriate permissions

3. Use `bootstrap_node.sh` to SCP the files onto the Pi, it takes 1 argument
the IP address of the Pi to SCP the files onto

4. Run `install_chef.sh` to setup the Pi for Chef'ing, this will
    1. Enable swap (Chef will run out of memory on any reasonably sized cookbook without this)
    2. Install Ruby 2.5.3 by building it from source (at the time of making this
a new enough version of Ruby to run Chef 14 wasn't available in apt)
    3. Install Chef as a ruby gem

5. Modify `bootstrap.json` to contain the correct run list

6. Modify `client.rb` to contain the correct `cookbook_path`

7. Run chef-client in local mode `sudo chef-client -z -j bootstrap.json -c client.rb`
