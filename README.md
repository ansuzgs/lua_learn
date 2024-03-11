# :mortar_board: Learning Lua

As I am trying to learn Lua, I decided to ask ChatGPT for a roadmap and some materials. My plan is to follow ChatGPT approach and see how much Lua we can learn in 3 months :rocket:

At the same time, I am also following the "Retos de programacion" from @MoureDev, so the idea is to do the exercises in Lua to get some practise.

![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)

## :calendar: Roadmap

### Month 1: Basics and Foundation

**Weeks 1-2: Getting Started with Lua**

- **Introduction to Lua:** Learn about Lua’s history, its main uses, and why it’s popular for embedding.
- **Syntax and Basic Concepts:** Focus on Lua syntax, data types (nil, boolean, number, string, function, userdata, thread, and table), variables, and basic control structures (if statements, loops).
- **Functions:** Understand how functions work in Lua, including how to define and call them.

**Weeks 3-4: Deep Dive into Lua's Core Features**

- **Tables:** Learn about tables in Lua, which are the main (and only) data structuring mechanism.
- **Modules and Packages:** How to organize Lua code into modules and use standard libraries.
- **Error Handling:** Basic error handling and using the `pcall` and `xpcall` functions.

**Assignments for Month 1:**

- Write simple Lua scripts to perform basic tasks, such as file manipulation, text processing, and simple data manipulation using tables.
- Practice exercises focusing on tables and functions to solidify your understanding.

### Month 2: Intermediate Topics

**Weeks 5-6: Advanced Programming Constructs**

- **Metatables and Metamethods:** Explore Lua's metaprogramming capabilities by understanding metatables and metamethods.
- **Coroutines:** Learn about coroutines and how they can be used for non-preemptive multitasking.

**Weeks 7-8: Integrating Lua with C**

- **Using the Lua C API:** Start with basic examples of calling C from Lua and vice versa. Focus on understanding the stack and how Lua interacts with C.
- **Embedding Lua:** Learn how to embed Lua within a C application for scripting.

**Assignments for Month 2:**

- Implement a small project or script utilizing metatables and metamethods, such as creating a simple class-like structure or a custom data manipulation library.
- Create a simple C program that embeds Lua, allowing you to run Lua scripts from within the C program.

### Month 3: Mastery and Real-world Applications

**Weeks 9-10: Performance and Best Practices**

- **Optimizing Lua Code:** Learn about performance considerations in Lua and how to profile and optimize Lua code.
- **Best Practices:** Study best practices in Lua programming to write clean, maintainable, and efficient code.

**Weeks 11-12: Project and Community Engagement**

- **Project Work:** Develop a more significant project that integrates everything you've learned. This could be a more complex application embedding Lua in C, or a Lua library/package that solves a particular problem.
- **Community Engagement:** Start engaging with the Lua community. Share your project, contribute to open-source Lua projects, participate in forums, and learn from the experiences of others.

**Assignments for Month 3:**

- Complete your project, ensuring it incorporates advanced Lua features and follows best practices.
- Participate in code reviews or discussions within the Lua community to gain feedback and insights.

## :books: Resources

Certainly! Here's a breakdown of recommended resources for each learning block:

### Month 1: Basics and Foundation

**Weeks 1-2: Getting Started with Lua**

- **Resource:** Lua.org - [Lua Documentation](https://www.lua.org/docs.html)
- **Resource:** Programming in Lua (First Edition) by Roberto Ierusalimschy (available online for free)
- **Resource:** Lua Tutorial by TutorialsPoint - [Lua Tutorial](https://www.tutorialspoint.com/lua/index.htm)

**Weeks 3-4: Deep Dive into Lua's Core Features**

- **Resource:** Lua.org - [Lua Tables Tutorial](https://www.lua.org/pil/2.html)
- **Resource:** Lua.org - [Modules Tutorial](https://www.lua.org/pil/15.html)
- **Resource:** Lua.org - [Error Handling Tutorial](https://www.lua.org/pil/8.html)

### Month 2: Intermediate Topics

**Weeks 5-6: Advanced Programming Constructs**

- **Resource:** Lua.org - [Metatables and Metamethods Tutorial](https://www.lua.org/pil/13.html)
- **Resource:** Lua.org - [Coroutines Tutorial](https://www.lua.org/pil/9.html)

**Weeks 7-8: Integrating Lua with C**

- **Resource:** Lua.org - [Lua C API Tutorial](https://www.lua.org/pil/24.html)
- **Resource:** Programming in Lua (First Edition) - Chapter 24: [Extending Lua with C](https://www.lua.org/pil/24.html)

### Month 3: Mastery and Real-world Applications

**Weeks 9-10: Performance and Best Practices**

- **Resource:** Lua.org - [Performance Tips](https://www.lua.org/pil/20.html)
- **Resource:** Lua-users wiki - [Lua Style Guide](http://lua-users.org/wiki/LuaStyleGuide)

**Weeks 11-12: Project and Community Engagement**

- **Resource:** GitHub - Explore Lua repositories, contribute to existing projects, or start your own project.
- **Resource:** Lua Mailing List - Subscribe to Lua mailing lists to engage with the community and ask questions.
- **Resource:** Lua.org - [Resources](https://www.lua.org/resources.html) - Additional resources such as books, tutorials, and community links.

## :construction: Projects

Certainly! Here are project ideas for each block of the roadmap, designed to reinforce the concepts and skills you'll be developing as you progress in your Lua learning journey.

### Month 1: Basics and Foundation

#### Project: Simple Personal Finance Tracker

- **Objective**: Apply basic Lua syntax, control structures, and functions to manage personal finances, such as income and expenses.
- **Features**:
  - Input monthly income and various expenses.
  - Categorize expenses (e.g., groceries, utilities, leisure).
  - Calculate total expenses and net savings.
  - Simple console interface for input and reporting.

### Month 2: Intermediate Topics

#### Project 1: Text-based Adventure Game

- **Objective**: Utilize advanced programming constructs, tables, and modules to create a text-based adventure game.
- **Features**:
  - Player can move through different rooms or locations stored in tables.
  - Inventory system for the player using tables.
  - Events or actions in each room (e.g., find an item, encounter a creature).
  - Save and load game states using file I/O.

#### Project 2: Basic Task Management Application

- **Objective**: Implement a CLI (Command Line Interface) task management application to practice integrating Lua with C for performance-critical operations.
- **Features**:
  - Add, edit, complete, and delete tasks.
  - Prioritize tasks and categorize them (work, personal, urgent).
  - Store tasks in a file and read from it upon program start.
  - (Optional) Integrate Lua with C for handling file I/O operations efficiently.

### Month 3: Mastery and Real-world Applications

#### Project 1: Lua-Powered Web Server

- **Objective**: Create a simple web server that can serve HTML pages, leveraging Lua's ability to interface with C libraries and systems programming.
- **Features**:
  - Respond to HTTP GET requests with HTML content.
  - Dynamic content generation based on request parameters (e.g., generating a list of tasks from the previous project).
  - Logging of requests to a file.

#### Project 2: Real-time Data Visualization Tool

- **Objective**: Develop a tool that visualizes data in real-time, such as stock prices, weather data, or system performance metrics.
- **Features**:
  - Fetch data from an API periodically.
  - Process and analyze the data in Lua.
  - Use a simple GUI library (if available) or web interface to visualize the data (e.g., plotting graphs).
  - User interaction for setting parameters (e.g., data source, refresh rate).

#### Project 3: Neovim Plugin for Enhanced Productivity

**Objective**: Develop a Neovim plugin that enhances coding productivity, leveraging Lua's integration with Neovim's API. This could be a plugin that introduces new functionalities, optimizes existing workflows, or integrates with external tools and services.

**Features**:

- **Custom Text Manipulation Commands**: Create commands that perform complex text manipulation tasks not natively supported by Neovim, such as advanced find-replace functions, automatic code formatting according to custom rules, or smart comment toggling based on the file type.
- **Project Navigation**: Implement a file and project navigation system that enhances or complements Neovim's native capabilities, perhaps by integrating with external tools like `ripgrep` or `fd` for faster searching.
- **Integration with External APIs**: Fetch data from external APIs and display it within Neovim. This could be a TODO list, calendar events, or even real-time data like stock prices or weather updates, directly accessible within your editor.
- **Visual Enhancements**: Add visual aids or enhancements that improve the coding experience, such as a customizable status line, git branch indicators, or dynamically updated code metrics.
- **Automation of Repetitive Tasks**: Script common workflows or sequences of commands that you find yourself repeatedly performing, turning them into single-command executions.

### General Tips for Projects:

- **Start Small**: Begin with core functionalities and then incrementally add more features.
- **Iterate**: Don’t be afraid to refactor your code as you learn more or as your project's requirements evolve.
- **Engage with the Community**: Share your project progress, challenges, and successes in Lua communities. Feedback from experienced developers can provide valuable insights and encouragement.
- **Document Your Work**: Keep notes or a diary of your learning and project development process. This not only helps in consolidating your learning but also assists others who might work on similar projects.
