#!/bin/bash
# optimize_game.sh
# This script optimizes your system settings for maximum game performance on Linux.

echo "Starting game optimization..."

# 1. Set CPU performance mode: If cpufreq-set is available, switch to 'performance' governor
if command -v cpufreq-set >/dev/null 2>&1; then
  echo "Switching CPU governor to performance mode..."
  sudo cpufreq-set -r -g performance
else
  echo "cpufreq-set not found. Skipping CPU optimization."
fi

# 2. Set environment variables to boost performance for Wine/Proton
echo "Setting environment variables for Wine/Proton..."
export DXVK_ASYNC=1       # Enable asynchronous compilation in DXVK (for Vulkan)
export WINEDEBUG=-all     # Disable Wine debug output to reduce overhead

# 3. Optimize GPU settings (example for NVIDIA)
if command -v nvidia-settings >/dev/null 2>&1; then
  echo "Optimizing NVIDIA GPU settings..."
  # Example: Set GPU power management mode (adjust parameters according to your GPU)
  nvidia-settings --assign GPUPowerMizerMode=1
else
  echo "nvidia-settings not found. If you use AMD/Intel, please check your drivers and adjust settings accordingly."
fi

echo "Optimization complete. Launch your game to enjoy improved performance!"
