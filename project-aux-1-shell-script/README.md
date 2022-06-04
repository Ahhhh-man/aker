# Shell scripting

> **Objective:** Create a shell script that reads a csv file that contains the first name of the users to be onboarded.

1. The script should read the CSV file, create each user on the server, and add to an existing group called developers (if it already exists).
2. The script will first check for the existence of the user on the system, before it will attempt to create that it.
3. Ensures that created users have a default home directory. If it does not exist, then create it.
4. Ensures that each user has a .ssh folder within its home directory. If it does not exist, then create it.
5. For each user’s SSH configuration, creates an authorized_keys file.

## Instructions
From the host server:
```
./run.sh <key-path> <root-user@server>
```
