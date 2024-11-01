# Traveling Salesman Visualization

A Processing application that visualizes the classic Traveling Salesman Problem (TSP) using a brute-force approach to find the optimal route between cities.

## Preview
[A screenshot or GIF of the application would go here]

## Requirements
- [Processing 4.0+](https://processing.org/download)
- Java 8 or higher

## Installation

1. Clone this repository: 
    ```bash
    git clone https://github.com/Jimmyu2foru18/Traveling-Salesman.git
    ```

2. Open the project in Processing:
   - Launch Processing IDE
   - File -> Open -> Navigate to `Traveling_Salesman.pde`

## Running the Application

1. Click the "Run" button in Processing IDE, or press `Ctrl + R` (Windows/Linux) or `Cmd + R` (Mac)
2. The application will:
   - Generate 10 random cities
   - Calculate the optimal route
   - Display an animation of the route

## Project Structure

- `Traveling_Salesman.java` - Main application code
- `Instructions.md` - Detailed documentation of how the application works
- `README.md` - This file

## How It Works

The application:
1. Generates random cities on an 800x800 canvas
2. Uses a brute-force algorithm to find the shortest possible route
3. Visualizes the route with:
   - Black dots representing cities
   - Red lines showing the optimal path
   - Blue dot animating the journey between cities

## Limitations

- Due to the brute-force approach, the application works best with 10 or fewer cities
- Performance decreases exponentially with additional cities due to factorial time complexity

## Contributing

Feel free to fork this project and submit pull requests. You might consider:
- Implementing more efficient algorithms (e.g., genetic algorithms, nearest neighbor)
- Adding user controls for number of cities
- Improving the visualization

## License

[Your chosen license]

## Acknowledgments

- Based on the Traveling Salesman Problem, a classic computer science challenge
- Built with Processing, a flexible software sketchbook