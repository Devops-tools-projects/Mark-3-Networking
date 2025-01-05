#!/bin/bash

###############################
#author: Sai kamal
#date: 3/1/2025
# script to list out the user who has access to repository, with this we will recreate this command "curl -s -u "USERNAME:PASSWORD" https://api.github.com/user/repos/{owner}/{repo}/collaborators and filter the output#
################################

set -x
#to get the git url

API_URL="https://api.github.com"

#user name and personal info

USER_NAME=$username
Token=$token


#to get the owners/organisation and Repository name 

owner=$1
repo=$2



#we will make a function for git to make a github API request.

function github_api {
	local part= "$1"
	local url="${API_URL}/${part}"



#we will recreate this command "curl -s -u "USERNAME:PASSWORD" https://api.github.com/" with the given data.
	
  	curl -s -u "${USER_NAME}:${Token}" "$url"
}




#we will filter users with read access "https://api.github.com/repos/{owner}/{repo}/collaborators"

function github_list {
	 local end="repos/${owner}/${repo}/collaborators"
	collab="$(github_api "$end")"

#| jq -r '.[] | select(.permissions.pull == true) | .login')" 
       
#while read -r collab
#do
 #   echo "$login"
#done
echo "$collab"
}

github_list
