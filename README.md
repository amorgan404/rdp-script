# Remote Desktop Connection Script

This Bash script allows users to connect to a remote Windows machine via the Remote Desktop Protocol (RDP) using the xfreerdp3 client. The script is designed to be interactive, prompting the user for necessary details if they are not provided through command-line arguments.

## Features

*   Interactive Input: If the required details (IP address, Username, Domain, Password) are not provided via command-line arguments, the script will prompt the user to input them.
*   Dynamic Resolution: The script automatically adjusts the resolution of the RDP session.
*   Background Execution: The RDP session runs in the background, allowing the terminal to remain free for other tasks.

## Usage

You can run the script by passing the necessary options directly in the command line or allowing the script to prompt you for them interactively.

### Command-Line Arguments
```
./rdp_script.sh -i <IP_ADDRESS> -u <USERNAME> -d <DOMAIN>
```
*   `-i`: The IP address of the remote Windows machine.
*   `-u`: The username to log in to the remote machine.
*   `-d`: The domain of the remote machine.

Example:

./rdp_script.sh -i 192.168.1.100 -u myuser -d MYDOMAIN

### Interactive Mode

If you do not pass the IP address, username, or domain via command-line arguments, the script will prompt you to enter them. The password will always be prompted securely.

Example:

```
./rdp_script.sh
```

<p>**Some required arguments are missing. Prompting for input...**</p>
<p>**Enter the IP Address:** 192.168.0.10</p>
<p>**Enter the Username:** Administrator</p>
<p>**Enter the Domain:** domain</p>
<p>**Enter the Password:**</p>

## Dependencies

The script relies on xfreerdp3 as the RDP client. Below are the installation instructions for various Linux distributions:

### Ubuntu
```
sudo apt update
sudo apt install freerdp2-x11
```

### Oracle Linux
```
sudo dnf install epel-release
sudo dnf install freerdp
```

### Arch Linux
```
sudo pacman -S freerdp
```

## Running the Script

Execute the script using the following command:
```
./rdp_script.sh -i <IP_ADDRESS> -u <USERNAME> -d <DOMAIN>
```

Or, simply run without arguments to be prompted for the required information:

```
./rdp_script.sh
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

