mvnrun() {

echo mvn $@
eval mvn $@
echo mvn $@

}

#restart vagrant vm
vroll() {

destroy="vagrant destroy $@ -f"
up="vagrant up $@ --provision"

echo "$destroy && $up"
eval "$destroy" && eval "$up"
echo "$destroy && $up"

}

#vagrant ssh
vssh() {

command="vagrant ssh $@"

echo "$command"
eval "$command"

}


mcipde() {

# mvn clean install project dependents exclude (project)

cmd="mvn clean install -pl $1,\!$1 -am ${@:2}"

echo "$cmd"
eval "$cmd"
echo "$cmd"

}


eval `ssh-agent`
ssh-add


alias gerrit='ssh -p 29418 zeimet@localhost gerrit'

alias mci='mvnrun clean install'
alias mcipde='mcipde'
alias mcit='mvnrun clean test-compile integration-test'
alias mcp='mvnrun clean package'
alias mcv='mvnrun clean verify'
alias mit='mvnrun test-compile integration-test'

alias vroll='vroll'
alias vssh='vssh'
alias vsshvmast='vssh vmaster -- -R 42203:localhost:42203'

