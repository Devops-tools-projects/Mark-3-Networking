#!/bin/bash

###############################
#author: Sai kamal
#date: 3/1/2025
# script to list out the user who has access to repository, with this we will recreate this command "curl -s -u "USERNAME:PASSWORD" https://api.github.com/user/repos/{owner}/{repo}/collaborators and filter the output#
################################
# syntex on executing the script:
##"./code.sh <owner(or)organisation_name> <repository_name>"##
###############################

#checks if two aurguments are provided
function helper {
        command_aurg=2
        if [ $# -ne $command_aurg ]; then
                echo "Please provide owner/organisation and repository name"
                exit 1 #exits the code if aurguments are not provided
        fi
}



helper "$@" #passes aurg to helper function"

API_URL="https://api.github.com"

#user name and personal info

USER_NAME=$username
Token=$token


#to get the owners/organisation and Repository name 

owner=$1
repo=$2

#we will make a function for git to make a github API request.

function github_api {
# we describe local user again as we only be used here in github_abi function	
	local part="$1"
	local url="${API_URL}/${part}"



#we will recreate this command "curl -s -u "USERNAME:PASSWORD" https://api.github.com/" with the given data.
	
  	curl -s -u "${USER_NAME}:${Token}" "$url"
}




#we will filter users with read access "https://api.github.com/repos/{owner}/{repo}/collaborators"

github_list="repos/${owner}/${repo}/collaborators"
collab="$(github_api "$github_list"| jq -r '.[] | select(.permissions.pull == true) | .login')" 

#we use if else conditional statement to print user details or if no users 
if [[ -z "$collab" ]]; then

	echo "no users with read access: $owner/$repo"
else
	echo "users with read access to $owner/$repo"
	echo "$collab"

fi
