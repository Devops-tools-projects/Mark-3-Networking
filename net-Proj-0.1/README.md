### we will get the details from git API using 
~~~
curl -s -u "<username>:<token>" "https://apt.github.com/repo/<username(or)<organisation>/<repo>/collaborators
~~~
### we will filter the json format for just user details inside repo using
~~~
jq -r '.[] | select(.permissions.pull == true) | .login')"
~~~
jq command is used to read the json and look for desired output.

we will then use "if" conditions to print the output (or) in case of no output.
