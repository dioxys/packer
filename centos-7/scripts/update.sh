#!/bin/bash -ex
yum -y update
yum -y upgrade yum kernel
yum -y upgrade
yum clean all
package-cleanup --leaves --all