# Configuration and Setup Instructions
This documentation applies to and should work on any Linux distro (if you know what you're doing).
All directions were last tested on 9/2/12 from Ubuntu 12.04LTS

### Ruby and Rails configuration
1. From the command line let's install rvm and Ruby:
```shell
	$ cd ~	## To be safe, switch to your home directory.
	$ curl -L https://get.rvm.io | bash -s stable
	$ source ~/.rvm/scripts/rvm
	## At this point if you're using gnome-terminal (very likely) goto Edit>Profile Preferences>Title and Command
	## and check "Run command as a login shell"; More information can be found at https://rvm.io/integration/gnome-terminal
	$ rvm pkg install openssl
	$ rvm install 1.9.3 --with-openssl-dir=$rvm_path/usr	## Wait a really long time to download and compile Ruby version 1.9.3
```

2. Let's prepare for the rails install:
```shell
	$ rvm use 1.9.3@wsutech-website --create --default	## Sets up a new gemset for us to use for the website (for advanced users who already have rvm and Ruby run this command with the --default tag left off)
	$ vim ~/.gemrc 	## Feel free to substitute vim for your favorite text editor.
```

3. Add the following lines to your .gemrc file to prevent worthless doc files (they can be found online) from taking up time and disk space.
```shell
	install: --no-rdoc --no-ri
	update: --no-rdoc --no-ri
```

### Website configuration
1. Move into the directory where you want the website developement to reside (Example: ~/software-dev/rails-projects/).
2. Assuming you've already forked the repo on github run (if not, fork the repo on github!):
```shell
	$ git clone https://github.com/<your-github-username>/<name-you-gave-for-your-fork>.git tech-club-website
	$ cd tech-club-website/
```

3. Install all the gems and dependencies:
```shell
        $ gem install bundler 
        $ bundle install ## This is the part where we actually install Rails! =D, you may run into some package problems
```

4. Build the database	
```shell
	$ rake db:migrate
```

### Testing configuration
1. Let Guard run in its own terminal window:
```shell
	$ guard
```

2. See what's broken, fix and save, and like magic it updates itself.
3. Profit?????


### TODO
1. Add a list of package dependencies and how to install for common OS Ubuntu/Fedora/Mac OSX


