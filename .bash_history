bash myscript.sh 
cat myscript.sh | bash
cat myscript.sh
nano myscript.sh 
cat myscript.sh 
bash myscript.sh 
nano myscript.sh 
./myscript.sh 
nano myscript.sh 
curl #!/bin/sh
set -e
# Docker CE for Linux installation script
#
# See https://docs.docker.com/engine/install/ for the installation steps.
#
# This script is meant for quick & easy install via:
#   $ curl -fsSL https://get.docker.com -o get-docker.sh
#   $ sh get-docker.sh
#
# For test builds (ie. release candidates):
#   $ curl -fsSL https://test.docker.com -o test-docker.sh
#   $ sh test-docker.sh
#
# NOTE: Make sure to verify the contents of the script
#       you downloaded matches the contents of install.sh
#       located at https://github.com/docker/docker-install
#       before executing.
#
# Git commit from https://github.com/docker/docker-install when
# the script was uploaded (Should only be modified by upload job):
SCRIPT_COMMIT_SHA="93d2499759296ac1f9c510605fef85052a2c32be"
# strip "v" prefix if present
VERSION="${VERSION#v}"
# The channel to install from:
#   * nightly
#   * test
#   * stable
#   * edge (deprecated)
DEFAULT_CHANNEL_VALUE="stable"
if [ -z "$CHANNEL" ]; then CHANNEL=$DEFAULT_CHANNEL_VALUE; fi
DEFAULT_DOWNLOAD_URL="https://download.docker.com"
if [ -z "$DOWNLOAD_URL" ]; then DOWNLOAD_URL=$DEFAULT_DOWNLOAD_URL; fi
DEFAULT_REPO_FILE="docker-ce.repo"
if [ -z "$REPO_FILE" ]; then REPO_FILE="$DEFAULT_REPO_FILE"; fi
mirror=''
DRY_RUN=${DRY_RUN:-}
while [ $# -gt 0 ]; do case "$1" in )
nano myscript.sh && chmod 700 myscript.sh
cat myscript.sh 
ll
bash
DRY_RUN=1
;;
--*)
echo "Illegal option $1"
;;
esac
shift $(( $# > 0 ? 1 : 0 ))
done
case "$mirror" in Aliyun) LOAD_URL="https://mirrors.aliyun.com/docker-ce"; aCloud)
DOWNLOAD_URL="https://mirror.azure.cn/docker-ce"
;;
esac
command_exists() { command -v "$@" > /dev/null 2>&1; }
# version_gte checks if the version specified in $VERSION is at least
# the given CalVer (YY.MM) version. returns 0 (success) if $VERSION is either
# unset (=latest) or newer or equal than the specified version. Returns 1 (fail)
# otherwise.
#
# examples:
#
# VERSION=20.10
# version_gte 20.10 // 0 (success)
# version_gte 19.03 // 0 (success)
# version_gte 21.10 // 1 (fail)
version_gte() { if [ -z "$VERSION" ]; then  0; fi; eval calver_compare "$VERSION" "$1"; }
# calver_compare compares two CalVer (YY.MM) version strings. returns 0 (success)
# if version A is newer or equal than version B, or 1 (fail) otherwise. Patch
# releases and pre-release (-alpha/-beta) are not taken into account
#
# examples:
#
# calver_compare 20.10 19.03 // 0 (success)
# calver_compare 20.10 20.10 // 0 (success)
# calver_compare 19.03 20.10 // 1 (fail)
calver_compare() ( set +x yy_a="$(echo "$1" | cut -d'.' -f1)"; yy_b="$(echo "$2" | cut -d'.' -f1)"; if [ "$yy_a" -lt "$yy_b" ]; then  1; fi; if [ "$yy_a" -gt "$yy_b" ]; then  0; fi; mm_a="$(echo "$1" | cut -d'.' -f2)"; mm_b="$(echo "$2" | cut -d'.' -f2)"; if [ "${mm_a#0}" -lt "${mm_b#0}" ]; then  1; fi return 0; )
is_dry_run() { if [ -z "$DRY_RUN" ]; then  1; else  0; fi; }
is_wsl() { case "$(uname -r)" in *microsoft* ) true ;; # WSL 2
*Microsoft* ) true ;; # WSL 1
* ) false;; esac; }
is_darwin() { case "$(uname -s)" in *darwin* ) true ;; *Darwin* ) true ;; * ) false;; esac; }
deprecation_notice() { distro=$1; distro_version=$2; echo; printf "\033[91;1mDEPRECATION WARNING\033[0m\n"; printf "    This Linux distribution (\033[1m%s %s\033[0m) reached end-of-life and is no longer supported by this script.\n" "$distro" "$distro_version"; echo   "    No updates or security fixes will be released for this distribution, and users are recommended"; echo   "    to upgrade to a currently maintained version of $distro."; echo; printf   "Press \033[1mCtrl+C\033[0m now to abort this script, or wait for the installation to continue."; echo; sleep 10; }
get_distribution() { lsb_dist=""
if [ -r /etc/os-release ]; then ing an empty string here should be alright since the
echo "$lsb_dist"; }
echo_docker_as_nonroot() { if is_dry_run; then fi
if command_exists docker && [ -e /var/run/docker.sock ]; then '
tentionally mixed spaces and tabs here -- tabs are stripped by "<<-EOF", spaces are kept in the output
echo
echo "================================================================================"
echo
if version_gte "20.10"; then
 Docker as a non-privileged user, consider setting up the"
 in rootless mode for your user:"
stall"
 about rootless mode."
 the Docker daemon as a fully privileged service, but granting non-root"
echo "users access, refer to https://docs.docker.com/go/daemon-access/"
echo
echo "WARNING: Access to the remote API on a privileged Docker daemon is equivalent"
echo "         to root access on the host. Refer to the 'Docker daemon attack surface'"
echo "         documentation for details: https://docs.docker.com/go/attack-surface/"
echo
echo "================================================================================"
echo
}

# Check if this is a forked Linux distro
check_forked() {

# Check for lsb_release command existence, it usually exists in forked distros
if command_exists lsb_release; then
# Check if the `-u` option is supported
set +e
lsb_release -a -u > /dev/null 2>&1
lsb_release_exit_code=$?
set -e

# Check if the command has exited successfully, it means we're in a forked distro t info about current distro; g '$lsb_dist' version '$dist_version'.; fo; -f 2 | tr -d '[:space:]')
dist_version=$(lsb_release -a -u 2>&1 | tr '[:upper:]' '[:lower:]' | grep -E 'codename' | cut -d ':' -f 2 | tr -d '[:space:]')
# Print info about upstream distro
cat <<-EOF
Upstream release is '$lsb_dist' version '$dist_version'.
EOF

else
if [ -r /etc/debian_version ] && [ "$lsb_dist" != "ubuntu" ] && [ "$lsb_dist" != "raspbian" ]; then s Raspbian  and don't even know it!
lsb_dist=debian
fi
dist_version="$(sed 's/\/.*//' /etc/debian_version | sed 's/\..*//')"
case "$dist_version" in
11)
dist_version="bullseye"
;;
10)
dist_version="buster"
;;
9)
dist_version="stretch"
;;
8)
dist_version="jessie"
;;
esac
fi
fi
fi
}

do_install() {
echo "# Executing docker install script, commit: $SCRIPT_COMMIT_SHA"

if command_exists docker; then
cat >&2 <<-'EOF'
Warning: the "docker" command appears to already exist on this system.

If you already have Docker installed, this script can cause trouble, which is
why we're displaying this warning and provide the opportunity to cancel the; stallation. stalled the current Docker package using this script and are using it;  to update Docker, you can safely ignore this message. ow to abort this script.;  2>/dev/null || true)"
sh_c='sh -c'
if [ "$user" != 'root' ]; then d_exists sudo; then
sh_c='sudo -E sh -c'
elif command_exists su; then
sh_c='su -c'
else
cat >&2 <<-'EOF'
Error: this installer needs the ability to run commands as root.
We are unable to find either "sudo" or "su" available to make this happen.
EOF

exit 1
ll
cd ..
exit
apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
ll
cat myscript.sh 
exit
aws s3 ls | grep -i dev* | cut -d " " -f 3
cd testfolder/
i=o
while [$i -lt 10]; do echo $RANDOM > file$i; i=$(( $i + 1 )); sleep 1; done
while [ $i -lt 10 ]; do echo $RANDOM > file$i; i=$(( $i + 1 )); sleep 1; done
cat file0
exit
mkdir testfolder
cd testfolder/
watch -n 1
watch -n a ls -a
watch -n a ls -la
watch -n 1 ls -la
exit
ll
cat myscript.sh 
aws cli
aws s3 ls
aws configure
aws s3 ls
aws s3 ls | grep -i dev*
aws s3 ls | grep -i dev* | cut -d " " -f 3
aws
aws iam
watch -n 5
aws s3 ls | grep -i dev* | cut -d " " -f 3aws s3 ls | grep -i dev* | cut -d " " -f 3
BUKS=$(aws s3 ls | grep -i dev* | cut -d " " -f 3)
echo $BUKS
A=aws s3 ls | grep -i dev* | cut -d " " -f 3
A="aws s3 ls | grep -i dev* | cut -d " " -f 3"
A=`aws s3 ls | grep -i dev* | cut -d " " -f 3`
echo $A
A
nano myscript.sh 
./myscript.sh 
nano myscript.sh 
echo $BUKS
nano myscript.sh 
./myscript.sh 
watch $A
aws s3 ls | grep -i dev* | cut -d " " -f 3
tmux
ll
cd testfolder/
date
date > file1
cat file1 
aws s3 cp file1 s3://devops2468
nano script1.sh && chmod 700 script1.sh
./script1.sh 
nano script1.sh 
./script1.sh 
ls
echo $path
echo $PATH
echo $BASH
cat script1.sh 
./script1.sh 
cat /etc/passwd
useradd -m testuser1
cat /etc/passwd
cat /etc/passwd | cut -d ":" -f 1
userdel -r testuser1 user1
userdel -r testuser1 
userdel -r testuser1
nano users.sh
./users.sh
ll
chmod 700 users.sh
./users.sh
diwakar
cat /etc/passwd
userdel -r naresh
userdel -r arava
cat /etc/passwd
a=10
b=20
c=$(( $a + $b ))
echo $c
d=`expr $a + $b'`
d= `expr $a + $b'`
d= `expr $a + $b`
x=$(( $a + $b -5 * 3 ))
echo $x
x=$(( $a + ( $b -5 ) * 3 ))
echo $x
a=10
b=20
(( $a==$b ))
d=(( $a==$b ))
d= (( $a==$b ))
exit
B
a
./users.sh 
nano /etc/ssh/sshd_config
service sshd restart
./users.sh 
cat /etc/passwd
cat /etc/passwd | cut -d ":" -f 1
cat /etc/passwd | cut -d ":" -f 1 | shuf
cat /etc/passwd | cut -d ":" -f 1 | grep -i pavan
cat /etc/passwd | cut -d ":" -f 1 | grep -i a
cat /etc/passwd | cut -d ":" -f 1 | grep -i naresh
cat /etc/passwd | cut -d ":" -f 1,4 | grep -i naresh
EX_USER=$(cat /etc/passwd | cut -d ":" -f 1 │ grep -i naresh)
EX_USER=$(cat /etc/passwd | cut -d ":" -f 1 │ grep -w naresh)
cat /etc/passwd | cut -d ":" -f 1 │ grep -i naresh
cat /etc/passwd | cut -d ":" -f 1 | grep -i a
cat /etc/passwd | cut -d ":" -f 1,4 | grep -i naresh
cat /etc/passwd | cut -d ":" -f 1 │ grep -i naresh
./users.sh 
./
./users.sh 
bash users.sh 
./users.sh 
echo '!@#$%&*()'
echo '!@#$%&^*()'
echo '!@#$%&^*()_'
echo '!@#$%&^*()_' | sort
echo '!@#$%&^*()_' | fold
echo '!@#$%&^*()_' | fold -w
echo '!@#$%&^*()_' | fold -w 1
echo '!@#$%&^*()_' | fold -w 3
echo '!@#$%&^*()_' | fold -w 1
echo '!@#$%&^*()_' | fold -w2
echo '!@#$%&^*()_' | fold -w 1 | shuf
echo '!@#$%&^*()_' | fold -w 1 | shuf | head -n a
echo '!@#$%&^*()_' | fold -w 1 | shuf | head -n 1
echo $RANDOM
./users.sh 
arava
./users.sh 
password -e
passwd -e
passwd -e aa
./users.sh 
exit
nano users.sh 
exit
ls
nano users.sh
ll
bash users.sh 
chmod 700 users.sh 
./users.sh 
userdel a
tmux
nano users.sh 
echo $?
aj
echo $?
echo $@
echo $?
nano file.sh
./f
bash file.sh 
echo $?
history
exit
chmod 700 script.sh 
./script.sh 
./script.sh vm1 vm2 vm3
./script.sh 'vm1 vm2 vm3'
./script.sh 
./script.sh vm1 vm2 vm3
./script.sh vm1 vm2 vm3 vm4 5
./script.sh vm1 vm2 vm3
./script.sh 
./script.sh naresh vel 1999
ubuntu@ec2-3-110-107-123.ap-south-1.compute.amazonaws.comubuntu@ec2-3-110-107-123.ap-south-1.compute.amazonaws.comubuntu@ec2-3-110-107-123.ap-south-1.compute.amazonaws.com
ubuntu@ec2-3-110-107-123.ap-south-1.compute.amazonaws.com
.
echo $?
./script.sh 
./script.sh pavan hyd 1999
./script.sh pava hyd 1999
chmod 700 shutdown.sh 
./shutdown.sh 
./shutdown.sh  1 2
./shutdown.sh  1 2 3 4 45 5 5
./shutdown.sh vm1 vm2 vm3
./shutdown.sh  1 2 3 4 45 5 5
for i in {1..5}; do echo $i; done
hello/
helloiam
aws configure
aws --version
aws ec2 create-volume --volume-type gp2  --size 1  --availability-zone us-east-1a
aws ec2 create-volume --volume-type gp2  --size 1  --availability-zone ap-south-1
aws ec2 create-volume --volume-type gp2  --size 1  --availability-zone ap-south-1a
aws ec2 create-volume --volume-type gp2  --size 1  --availability-zone ap-south-1
aws ec2 create-volume --volume-type gp2  --size 1  --availability-zone ap-south-1b
./shutdown.sh 
./shutdown.sh 2
./shutdown.sh 1 2 3
./shutdown.sh 1 
./shutdown.sh 12 3 4
touch testing.sh
nano testing.sh 
bash testing.sh 
bash testing.sh 1 2 3 4
bash testing.sh welcome fff aaa
nano testing.sh 
bash testing.sh welcome fff aaa
nano testing.sh 
bash testing.sh welcome fff aaa
exit
nano script.sh 
nano vm.sh
nano shutdown.sh
nano terraformver.sh
mv terraformver.sh version
ls
for line in vesrion; do
for line in $(cat version); do echo $line; done
echo https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_linux_amd64.zip
echo https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_linux_amd64.zip | sed 's/1.1.2/0.13.0/g'
PACKAGE=$(echo https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_linux_amd64.zip | sed 's/1.1.2/0.13.0/g')
echo $PACKAGE
exit
nano script.sh
mux
tmux
cat version 
babo terraform.sh
nao terraform.sh
nano terraform.sh
bash terraform.sh 
nano terraform.sh
bash terraform.sh 
nano terraform.sh
bash terraform.sh 
rm -rf terraform*
terraform
nano terraform.sh
ll
nano
nano terraform.sh
bash terraform.sh 
nano terraform.sh
bash terraform.sh 
nano terraform.sh
bash terraform.sh 
nano terraform.sh
bash terraform.sh 
nano terraform.sh
bash terraform.sh 
nano terraform.sh
bash terraform.sh 
exit
ll
rm -rf terraform_0.12*
ll
nano myscript.sh
ls
nano user.sh
bash user.sh
cat user.sh
nano user.sh
bash user.sh
bash user.sh 1 2 34
bash user.sh 1 2 34 5 6 7
bash user.sh 1 2 3 rr
cp nano.sh nanoo.sh
cp nano.sh >> nanoo.sh
cat user.sh
nano usero.sh
ls
nano files.sh
chmod files.sh
chmod 700 files.sh
./files.sh 
cat file
cat files.sh 
nano files.sh
./files.sh 
ll
ls
cat files.sh
cat files1.sh
nano files1.sh
bash files1.sh
mkdir file
nano files2.sh
ls
bash files2.sh
cat vm.sh
nano files2.sh
nano files3.sh
bash files3.sh
nano files3.sh
bash files3.sh
cat vm.sh
expr 2020 - 198
avg=$(expr 2020 - 12)
echo $avg
clear
history
#!/bin/bash
if [ -f ./nano.sh ]; then echo "file present.."; else echo "file not present..."; fi
#!/bin/bash
if [ -f ./nano.sh ]; then echo "file present.."; else echo "file not present..."; fi
#!/bin/bash
if [ -f ./nano.sh ]; then echo "file present.."; else echo "file not present..."; fi
#!/bin/bash
if [ -f ./nano.sh ]; then echo "file present.."; else echo "file not present..."; fi
#!/bin/bash
if [ -f ./nano.sh ]; then echo "file present.."; else echo "file not present..."; fi
~~~~~~~~~~
~
#!/bin/bash
if [ -f ./nano.sh ]; then echo "file present.."; else echo "file not present..."; fi
m
#!/bin/bash
if [ -f ./nano.sh ]; then echo "file present.."; else echo "file not present..."; fi
if [ -f ./nano.sh ]; then echo "file present.."; else echo "file not present..."; fi
ls
nano usercreation.sh
chmod 700 usercreation.sh
./usercreation.sh 
chmod 700 usercreation.sh
nano usercreation.sh
./usercreation.sh 
./usercreation.sh  q w w
./usercreation.sh  q w waaja
./usercreation.sh  sssq w waaja
nano usercreation.sh
FRIENDS=("ANAD","jaa","aajja")
echo $FRIENDS
ping
echo ping
echo $ping
type etc
type ifconfig
type ping
type ifconfig
echo $FRIENDS{0}
echo $FRIENDS[*]
echo {$FRIENDS[*]}
echo ${FRIENDS[*]}
echo ${FRIENDS[0]}
echo ${FRIENDS[@]:0}
echo ${FRIENDS[*]:0}
echo ${FRIENDS[0]}
hi=(ata sjsj ahana ajjaa)
echo $hi
echo ${hi[@]}
echo ${hi[0]}
echo ${hi[1]}
echo ${hi[@]:2}
echo $hi[@]3}
echo $hi[@]:3}
echo $hi[@]:2}
echo ${hi[@]:2}
echo ${hi[@]:3}
for i in ${hi[0]}; do echo $i; done
for i in ${hi[@]}; do echo $i; done
history
region=(us-east-1 us-east-2 us-east-3)
echo $region
echo {region[@]}
echo ${region[@]}
for i ib ${region[*]}
for i in ${region[*]}; do echo $i; done
rr=('i' 'll')
echo {$rr[@]}
echo ${rr[@]}
aws ec2 describe instances
aws ec2 describe-instances --profile west1
aws ec2 instances
cat .aws/credentials 
region=('us-east-1' 'us-east-2' 'us-east-3' us-east-4)
echo ${region[@]}
nano .aws/credentials 
nano .aws/config 
aws ec2 describe-instances --profile east1
aws ec2 describe-instances
aws ec2 describe-instances --profiles us-east1
aws ec2 describe-instances --profiles west1
aws ec2 describe-instances --profile west1
nano .aws/credentials 
nano .aws/config 
aws ec2 describe-instances
aws ec2 describe-instances --profile east1
nano .aws/credentials 
aws ec2 describe-instances --profile east1
aws ec2 describe-instances --profile west1
aws ec2 describe-instances --profile west2
aws ec2 describe-instances --profile east2
echo $regins
echo $regions
regions=(us-eats-1 us-east-2 us-west-1 us-west-2)
echo $regions
echo ${regions[@]}
for reg in ${regions[@]}; do aws ec2 describe-insrances --profile $reg; done
for reg in ${regions[@]}; do aws ec2 describe-instances --profile $reg; done
nano .aws/config 
nano .aws/credentials 
aws ec2 describe-instances --profile west2
aws ec2 describe-instances --profile west1
aws ec2 describe-instances --profile south
for reg in ${regions[@]}; do aws ec2 describe-instances --profile $reg; done
regions=('us-east-1' 'us-east-2' 'us-west-1' 'us-west-2')
echo ${regions[@]}
for reg in ${regions[@]}; do aws ec2 describe-instances --profile $reg; done
aws ec2 describe-instances --profile ${regions[@]}
aws ec2 describe-instances --profile east1
aws ec2 describe-instances --profile west2
profiles=(east1 east2 west1 west2)
for reg in ${regions[@]}; do aws ec2 describe-instances --profile $reg; done
for reg in ${profiles[@]}; do aws ec2 describe-instances --profile $reg; done
apt install jq
for reg in ${profiles[@]}; do aws ec2 describe-instances --profile $reg; done
for reg in ${profiles[@]}; do aws ec2 describe-instances --profile $reg; done | jq
nano .aws/config 
for reg in ${profiles[@]}; do aws ec2 describe-instances --profile $reg; done | jq
aws ec2 instances-describe
aws ec2 instances-describe | jq
aws ec2 describe-instances --profile
aws ec2 describe-instances --profile east1
history
aws ec2 describe-instances --profile east1
aws ec2 describe-instances --profile west3
aws ec2 describe-instances --profile west2
for reg in ${profiles[@]}; do aws ec2 describe-instances --profile $reg; done | jq -r .Instances[].InstanceId
ls
cat files1.sh 
cat version
cat file.sh
ls
cat files3.sh
nano outputec2
cat outputec2 | {     "Reservations": [;         {             "Groups": [],;             "Instances": [;                 {                 "AmiLaunchIndex": 0,;                 "ImageId": "ami-0abcdef1234567890,
                "InstanceId": "i-1234567890abcdef0,;                 "InstanceType": "t2.micro",;                 "KeyName": "MyKeyPair",;                 "LaunchTime": "2018-05-10T08:05:20.000Z",;                 "Monitoring": {;                     "State": "disabled";                 },;                 "Placement": {;                     "AvailabilityZone": "us-east-2a",;                     "GroupName": "",;                     "Tenancy": "default";                 },;                 "PrivateDnsName": "ip-10-0-0-157.us-east-2.compute.internal",;                 "PrivateIpAddress": "10.0.0.157",;                 "ProductCodes": [],;                 "PublicDnsName": "",;                 "State": {;                     "Code": 0,;                     "Name": "pending";                 },;                 "StateTransitionReason": "",;                 "SubnetId": "subnet-04a636d18e83cfacb",;                 "VpcId": "vpc-1234567890abcdef0",;                 "Architecture": "x86_64",;                 "BlockDeviceMappings": [],;                 "ClientToken": "",;                 "EbsOptimized": false,;                 "Hypervisor": "xen",;                 "NetworkInterfaces": [;                     {                         "Attachment": {;                             "AttachTime": "2018-05-10T08:05:20.000Z",;                             "AttachmentId": "eni-attach-0e325c07e928a0405",;                             "DeleteOnTermination": true,;                             "DeviceIndex": 0,;                             "Status": "attaching";                         },;                         "Description": "",;                         "Groups": [;                             {                                 "GroupName": "MySecurityGroup",;                                 "GroupId": "sg-0598c7d356eba48d7";                             };                         ],;                         "Ipv6Addresses": [],;                         "MacAddress": "0a:ab:58:e0:67:e2",;                         "NetworkInterfaceId": "eni-0c0a29997760baee7",;                         "OwnerId": "123456789012",;                         "PrivateDnsName": "ip-10-0-0-157.us-east-2.compute.internal",;                         "PrivateIpAddress": "10.0.0.157";                         "PrivateIpAddresses": [;                             {                                 "Primary": true,;                                 "PrivateDnsName": "ip-10-0-0-157.us-east-2.compute.internal",;                                 "PrivateIpAddress": "10.0.0.157";                             };                         ],;                         "SourceDestCheck": true,;                         "Status": "in-use",;                         "SubnetId": "subnet-04a636d18e83cfacb",;                         "VpcId": "vpc-1234567890abcdef0",;                         "InterfaceType": "interface";                     };                 ],;                 "RootDeviceName": "/dev/xvda",;                 "RootDeviceType": "ebs",;                 "SecurityGroups": [;                     {                         "GroupName": "MySecurityGroup",;                         "GroupId": "sg-0598c7d356eba48d7";                     };                 ],;                 "SourceDestCheck": true,;                 "StateReason": {;                     "Code": "pending",;                     "Message": "pending";                 },;                 "Tags": [],;                 "VirtualizationType": "hvm",;                 "CpuOptions": {;                     "CoreCount": 1,;                     "ThreadsPerCore": 1;                 },;                 "CapacityReservationSpecification": {;                     "CapacityReservationPreference": "open";                 },;                 "MetadataOptions": {;                     "State": "pending",;                     "HttpTokens": "optional",;                     "HttpPutResponseHopLimit": 1,;                     "HttpEndpoint": "enabled";                 };             };         ],;         "OwnerId": "123456789012";         "ReservationId": "r-02a3f596d91211712",;     }
cat outputec2 | jq
cat outputec2 | jq -r
mv outputec2  outputec2.json
cat outputec2.json | jq
cat outputec2.json | jq -r .Instances[].InstanceId
nano regions
ls
echo {regions[@]}
echo ${regions[@]}
regions=(us-east-1 us-east-2 us-west-1 us-west-2 ap-south-1)
echo ${profiles[@]}
profiles=(east1 east2 west1 west2 south1)
nano .aws/config 
nano .aws/credentials 
for reg in ${profiles[@]}; do aws ec2 describe-instances --profile $reg; done | jq -r .Instances[].InstanceId
aws ec2 describe-instances --profile south1
aws ec2 describe-instances --profile south1
aws ec2 describe-instances --profile south1 | jq -r .Instances[].InstanceId
aws ec2 describe-instances --profile south1 | jq -r '.Reservations[].Instances[].InstanceId'
echo ${profiles[@]}
echo $[regions[@]}
aws ec2 help | grep -i key
aws ec2 describe-key-pairs
aws ec2 describe-key-pairs --profle south1
aws ec2 describe-key-pairs --profile south1
aws ec2 describe-key-pairs --profile south1 | jq -r '.KeyPairs'
aws ec2 describe-key-pairs --profile south1 | jq -r '.KeyPairs.KeyName'
aws ec2 describe-key-pairs --profile south1 | jq -r '.KeyPairs.KeyName[]'
aws ec2 describe-key-pairs --profile south1 | jq -r '.KeyPairs[].KeyName'
aws ec2 describe-key-pairs --profile south1
aws ec2 describe-key-pairs --profile south1 | grep -i RegionName
aws ec2 describe-regions --profile south1 | grep -i RegionName
aws ec2 describe-regions --profile south1 | grep -i RegionName | cut -d ":" -f 2
aws ec2 describe-regions --profile south1 | grep -i RegionName | cut -d ":" -f 2 | tr -d ","
aws ec2 describe-regions --profile south1 | grep -i RegionName | cut -d ":" -f 2 | tr -d '"'
aws ec2 describe-regions --profile south1 | grep -i RegionName | cut -d ":" -f 2 | tr -d '"' | tr -d ','
