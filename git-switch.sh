#!/bin/sh

echo "Enter your Git username:"
read git_username

echo "Enter your Git email:"
read git_email

echo "Select your SSH key file:"

# List all public key files in the .ssh directory
ssh_files=(~/.ssh/*.pub)


# Remove directories and backup files from the list
ssh_files=("${ssh_files[@]##*/}") # remove path
ssh_files=("${ssh_files[@]#id_}") # remove "id_"
ssh_files=("${ssh_files[@]%.pub}") # remove ".pub"
ssh_files=($(echo "${ssh_files[@]}" | tr ' ' '\n' | grep -v -e '^$' -e 'config'))

# Display a menu of SSH key files to choose from
select ssh_file in "${ssh_files[@]}"; do
  if [ -n "$ssh_file" ]; then
    break
  fi
done

echo "Enter the passphrase for your SSH key (leave blank if none):"
read -s ssh_key_passphrase

# Set Git account information and SSH key
git config --global user.name "$git_username"
git config --global user.email "$git_email"
ssh-add -D
ssh-add -K "$HOME/.ssh/id_$ssh_file" <<< "$ssh_key_passphrase"
