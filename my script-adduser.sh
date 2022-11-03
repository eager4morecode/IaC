!/bin/bash

#Scipt will ask for user name, if no user exist will create new user

echo "Please enter a name to create new user, enter a name"

read username

getent passwd $username > /dev/null

        if [ $? -ne 0 ]; then

           for i in $username;

                do sudo useradd -m $i;

                echo "Success. A new account has been created for $username."
        done

        else echo "User Denied. An account exist for $username"

        fi
