VGA_Controller
This project is a VGA controller with vertical and horizontal sync, featuring a ping pong game displayed on the screen. The entire implementation is described in VHDL.

Features
Vertical and Horizontal Sync
The syncing entities use counters and comparators, along with a state machine to control the vertical and horizontal synchronization signals.
Game Implementation
A simple ping pong game is added to the screen.
Two entities are used for the game:
Ball and Stand Painter: This entity is responsible for painting the ball and the stand on the screen.
Object Movement Controller: This entity uses parameters from the counters, along with an enable signal and control switches, to move the objects (ball and stand) on the screen.
Switch Debouncing
A debouncing entity is implemented to handle the mechanical noise from the switches used to control the game.
VHDL Description
All entities and their interactions are described in VHDL, ensuring precise control and synchronization.
Project Structure
vga_controller.vhdl: Main entity controlling the VGA sync signals.
game_logic.vhdl: Contains the game logic and object movement.
painter.vhdl: Handles the painting of the ball and stand.
debouncer.vhdl: Debounces the control switches.
Getting Started
Clone the repository:
sh
Copy code
git clone https://github.com/lyes-23/VGA_controller.git
Open the VHDL files in your preferred VHDL simulation tool.
Synthesize and simulate the design to see the VGA controller and ping pong game in action.
Usage
Connect the output signals to a VGA display to view the synchronization and game.
Use the control switches to play the ping pong game.
Contributions
Feel free to fork the repository and submit pull requests for any improvements or new features.