# Git Account Switcher

This script is designed to help you switch between different Git accounts on your Macbook. It allows you to set your Git username and email, as well as the SSH key associated with your Git account.

## Getting Started

1. Clone this repo.
2. Open a terminal and navigate to the directory where you saved the script.
3. Make the script executable by running the following command:
```
chmod +x git-swith.sh
```

## Usage

To use the script, follow these steps:

1. Open a terminal and navigate to the directory where you saved the `git-switch.sh` script.
2. Run the script by typing `./git-switch.sh` and pressing `Enter`.
3. Follow the prompts to enter your Git username, email, and select your SSH public key file.
4. If your SSH key has a passphrase, enter it when prompted.
5. The script will set your Git account information and add your SSH key to the SSH agent.

You can also create an alias to run the script with a shorthand command. To do this, add the following line to your `.bash_profile` file:
```
alias git-switch='/path/to/git-switch.sh'
```

Replace `/path/to/git-switch.sh` with the actual path to the script on your Macbook. For example, if you saved the script in your home directory, the path would be `~/git-switch.sh`.

Once you've added the alias, you can run the script by typing `git-switch` in the terminal.

## Troubleshooting

If you're having trouble using the script, make sure you have the following:

- A valid Git account with a username and email address.
- An SSH key associated with your Git account. If you don't have an SSH key, you can generate one using the `ssh-keygen` command.
- The `ssh-agent` process running in the background. You can start the `ssh-agent` by running the command `eval $(ssh-agent)`.
- The `ssh-add` command installed on your Macbook. You can install it using Homebrew by running the command `brew install openssh`.

## License

This project is licensed under the [MIT License](https://github.com/yourusername/git-account-switcher/blob/master/LICENSE). Feel free to use, modify, and distribute this script as you see fit.
