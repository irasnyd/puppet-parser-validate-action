FROM rockylinux:8

LABEL name="puppet-parser-validate-action"
LABEL repository="https://github.com/irasnyd/puppet-parser-validate-action"
LABEL homepage="https://github.com/irasnyd/puppet-parser-validate-action"

LABEL "com.github.actions.name"="puppet-parser-validate-action"
LABEL "com.github.actions.description"="GitHub Action to run 'puppet parser validate' syntax check"
LABEL "com.github.actions.icon"="share-2"
LABEL "com.github.actions.color"="orange"

LABEL "maintainer"="Ira W. Snyder <https://github.com/irasnyd/>"

RUN yum -y install http://yum.puppetlabs.com/puppet7/el/8/x86_64/puppet-agent-7.11.0-1.el8.x86_64.rpm
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
