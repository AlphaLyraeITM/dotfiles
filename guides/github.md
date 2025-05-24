# Configuring Github

## Adding autocomplete

Git usually comes with autocompletion scripts, but you need to enable them.

### Find Git Completion Script

```bash
ls /usr/share/bash-completion/completions/git
```

### Add script to .bashrc

```bash
vim ~/.bashrc

# add this line to the file
source /usr/share/bash-completion/completions/git
```

```bash
source ~/.bashrc
```

## Configuring SSH connection

### Install Required Packages

Ensure openssh is installed (it usually is by default on Arch Linux):

```bash
sudo pacman -S openssh
```

### Generate an SSH Key Pair

Run the following command to generate a new SSH key (use a secure passphrase for better security):

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

(Replace your_email@example.com with your GitHub email.)

- Press Enter to save the key in the default location (~/.ssh/id_ed25519).
- Enter a passphrase (recommended for security) or leave it empty.

### Add the SSH Key to the SSH Agent

Start the SSH agent and add your key:

```bash
eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519
```

This command starts the SSH agent (if not already running) and sets up the correct environment variables so that your system can use it.

### Copy the SSH Public Key to GitHub

Display your public key and copy it:

```bash
cat ~/.ssh/id_ed25519.pub
```

Now, add it to GitHub:

1. Go to GitHub SSH Keys Settings.
2. Click "New SSH Key".
3. Give it a title (e.g., "Arch Linux Laptop").
4. Paste the copied key.
5. Click "Add SSH Key".

### Test the connection

Verify that it works:

```bash
ssh -T git@github.com
```

You should see:

```
Hi username! You've successfully authenticated, but GitHub does not provide shell access.
```

### Clone repo using SSH

Now, when cloning a repo, use the SSH URL (not HTTPS):

```bash
git clone git@github.com:username/repo.git
```

(Replace username/repo.git with your actual repo.)
