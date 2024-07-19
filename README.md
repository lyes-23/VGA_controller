# VGA_Controller

This project is a VGA controller with vertical and horizontal sync, featuring a ping pong game displayed on the screen. The entire implementation is described in VHDL.

## Features

### Vertical and Horizontal Sync
- The syncing entities use counters and comparators, along with a state machine to control the vertical and horizontal synchronization signals.

### Game Implementation
- A simple ping pong game is added to the screen.
- Two entities are used for the game:
  1. **Ball and Stand Painter:** This entity is responsible for painting the ball and the stand on the screen.
  2. **Object Movement Controller:** This entity uses parameters from the counters, along with an enable signal and control switches, to move the objects (ball and stand) on the screen.

### Switch Debouncing
- A debouncing entity is implemented to handle the mechanical noise from the switches used to control the game.

## VHDL Description
- All entities and their interactions are described in VHDL, ensuring precise control and synchronization.

## Project Structure
- `vga_controller.vhd`: Main entity controlling the VGA sync signals.
- `movement_control.vhd`: Contains the game logic and object movement.
- `affiche_obj.vhd`: Handles the painting of the ball and stand.
- `Debounce_Single_Input.vhd`: Debounces the control switches.

## Getting Started
1. Clone the repository:
   ```sh
   git clone https://github.com/lyes-23/VGA_controller.git
