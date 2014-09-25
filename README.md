autodeploy
==========
yet another git deployment script for websites, super simple, super bash. 

Autodeploy works by copying a post-receive script and a config file into your
git hooks directory of the desired repository. The config file is used to define
the name of your website deployment directory as well as the branch names that
should match a deployment directory. The deployment directories are directories
that hold the contents of a branch in your git repo.

Installation
============
run 

`$sudo ./install.sh`

Usage
=====
the `autodeploy` command currently has minimal features for interfacing with the
config file of your repository. You'll have to manually edit (I know,
typing....ugh!) the config file in `.git/hooks/autodeploy.conf` to do configure
the deployment script.

Installing Autodeploy in a Repo 
-------------------------------
Install the autodeploy scripts to the server's deployment repository (generally
a bare repo). 
  1. Go to the repository that you wish to update the deployment directories
     when it's pushed to.
  2. run this command:

`$ autodeploy --init`

**NOTE:** the user that git runs under in this repository needs to have proper
permissions to write to the deployment directory. If you are using Apache or
some other webserver to access the deployment directories make sure that they
have read/write permissions as well. (A general solution is to make the git user
and webserver user be a part of the same group. The autodeploy script will
automatically set the umask to: `umask g+w` to allow for this).

Managing Deployment Branches
----------------------------
Each branch in the repository has the ability to map to a deployment directory.
Whenever a mapped branch is pushed to it is created/updated/removed depending on
what happens during the push. When a deployment branch is removed during a push
then the deployment directory is hidden instead of being removed (incase you
need it later).

Edit the `.git/hook/autodeploy.conf` file using your favorite (or not so favorite)
text editor to manage the branches to deploy.

The line beginning with `branches=` contains the list of branches that are
mapped to deployment directories.

If you wish to have a custom deployment directory name for a branch then add 

`branchName="deployment_directory_name"`

To the end of the file.

