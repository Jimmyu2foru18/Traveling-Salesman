# Traveling Salesman Problem Visualization

## Description
This Processing application demonstrates a solution to the Traveling Salesman Problem (TSP).
It creates a visual representation of finding the shortest possible route that visits each city
exactly once and returns to the starting city.

## Features
- Randomly generates 10 cities on the canvas
- Finds the optimal route using a brute-force permutation algorithm
- Visualizes the best route in red
- Animates a blue dot traveling between cities along the optimal path

## How it Works

### 1. Setup
- Creates 10 random city locations on an 800x800 pixel canvas
- Cities are represented as black dots

### 2. Route Finding
- Calculates all possible routes using permutations
- Determines the shortest possible path connecting all cities
- The optimal route is shown as a red line

### 3. Animation
- A blue dot moves along the optimal route
- Continuously cycles through the path
- Movement speed can be adjusted via the moveSpeed variable

## Controls
- No user controls - runs automatically

## Technical Notes
This implementation uses a brute-force approach which works well for small numbers
of cities (n ≤ 10) but becomes computationally expensive for larger numbers.

## Implementation Details
The application is implemented in Processing (Java mode) and consists of:
- `Traveling_Salesman.java`: Main application file containing the visualization logic
- Cities stored as PVector objects for x,y coordinates
- Permutation algorithm to find all possible routes
- Linear interpolation (lerp) for smooth animation between cities 