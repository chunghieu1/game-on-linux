# GameOnLinux - Linux Gaming Assistant 🎮🐧

GameOnLinux is a toolkit designed to simplify the process of installing, optimizing, and managing games on Linux. This project automatically sets up and configures Wine/Proton to run Windows games, optimizes game settings for maximum FPS, and integrates with popular game managers like Lutris, Steam, and SteamCMD.

## Features

- **Automatic Wine/Proton Setup:**  
  Automatically installs and configures Wine to run Windows games on Linux. (Note: Proton is primarily managed through Steam.)

- **Game Optimization:**  
  Fine-tunes your system and game settings to achieve the highest performance for a smooth gaming experience.

- **Game Manager Integration:**  
  Integrates with popular game managers such as Lutris, Steam, and SteamCMD to help you easily manage and launch your games.

- **User-Friendly Interface:**  
  Choose between a command-line interface (CLI) or a web interface (if supported by the project) according to your preference.

## Requirements

- A Linux-based operating system (Ubuntu-based distributions recommended)
- Git installed on your system
- Required dependencies for Wine/Proton and other tools (refer to the individual scripts)

## Installation

### Step 1: Clone the Repository

Clone the repository to your local machine:
```bash
git clone https://github.com/chunghieu1/game-on-linux.git
cd game-on-linux
```

### Step 2: Install Wine/Proton 

Run the install_wine_proton.sh script to automatically install and configure Wine/Proton:

```bash
sudo ./install_wine_proton.sh
```

### Step 3: Optimize Game Settings

Run the optimize_game_settings.sh script to optimize your system and game settings:

```bash
./optimize_game_settings.sh
```

## Important Notes

- CPU Optimization:
The script uses cpufreq-set to switch your CPU governor to performance mode. If you see the message "cpufreq-set not found," it means you haven't installed the cpufrequtils package. To enable CPU optimization, install it by running:

```bash
sudo apt install cpufrequtils
```

- GPU Optimization:
For NVIDIA GPU users, the script attempts to optimize GPU settings using nvidia-settings. If you see the message "nvidia-settings not found," you should install the tool by running:

```bash
sudo apt install nvidia-settings
```

If you are using AMD or Intel GPUs, please refer to your driver documentation for similar optimization tools.

## Usage
- CLI:
After running the installation and optimization scripts, you can launch your games via the command line or use custom scripts as needed.

- Web Interface:
If the project supports a web interface, open your browser and visit http://localhost:8000 to access the graphical interface.

## Contributing
Contributions are welcome!

- Open an issue to discuss ideas or report problems.
- Submit a pull request with your changes, ensuring that you follow the project's coding standards.
## License
This project is licensed under the MIT License.

Note: Make sure to grant execution permissions for the script files before use:

```bash
chmod +x install_wine_proton.sh optimize_game_settings.sh
```