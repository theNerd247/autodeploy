#!bin/ruby

# coming soon: possible rewrite in ruby
#set the umask before we do anything


puts `umask g+w`

#are we testing the script?
TST=false

#CONFIG VARS
VARFILE="autodeploy.conf"

