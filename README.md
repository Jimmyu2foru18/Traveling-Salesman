# Fibonacci Web Application

A web application built with ASP.NET that calculates Fibonacci numbers. This project demonstrates a simple web service implementation using .NET Framework.

## Overview

This web application provides an API endpoint to calculate Fibonacci numbers. It's built using:
- ASP.NET Framework
- C#
- Web API configuration

## Project Structure 

```bash
FibonacciWebApp/
├── FibonacciWebApp.csproj
├── Controllers/
│   └── FibonacciController.cs
└── README.md
```

## Prerequisites

- Visual Studio 2019 or later
- .NET Framework 4.5 or later
- IIS Express (comes with Visual Studio) or IIS

## Installation

1. Clone the repository:

```bash
git clone https://github.com/Jimmyu2foru18/FibonacciWebApp.git
```

2. Open the solution file `FibonacciWebApp.sln` in Visual Studio

3. Restore NuGet packages:
   - Right-click on the solution in Solution Explorer
   - Select "Restore NuGet Packages"

4. Build the solution:
   - Press `Ctrl + Shift + B` or
   - Select `Build > Build Solution` from the menu

## Running the Application

1. In Visual Studio, press `F5` or click the "Start" button
2. The application will launch in your default web browser
3. IIS Express will host the application locally

## Configuration

The application includes different configuration files for various environments:
- `Web.config`: Main configuration file
- `Web.Debug.config`: Debug environment settings
- `Web.Release.config`: Release environment settings

