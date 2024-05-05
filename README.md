# Saucedemo - Robot Framework

This project serves as a playground for practicing and exploring various aspects of automated testing in Robot Framework, particularly the usage of the Browser Library. The Browser Library provides keywords for browser automation, enabling users to interact with web elements, perform actions, and validate behaviors on web pages.

## Project description
In this repository, you will find a set of test cases and examples demonstrating different functionalities and usage scenarios of the Browser Library. Each test case focuses on a specific aspect of browser automation, covering various websites and methods available in the library.

## Getting Started

1. **Clone the Repository**: Clone this repository to your local machine using the following command:

```
git clone <repository_url>
```

2. **Install Dependencies**: Ensure you have Python and Robot Framework installed on your machine. Additionally, install any necessary browser drivers (e.g., ChromeDriver) as per your testing requirements.
   If you do not have it:
   - **Python**: If you haven't already, install Python on your machine. You can download it from the official Python website: [Python Downloads](https://www.python.org/downloads/).
   - **Robot Framework**: Install Robot Framework using pip:
      ```
      pip install robotframework
      ```
    - **PyCharm** (Optional): PyCharm is a popular Integrated Development Environment (IDE) for Python. You can download and install it from the official JetBrains website: [PyCharm Downloads](https://www.jetbrains.com/pycharm/download/).

3. **Explore Test Cases**: Navigate to the project directory to explore the available test cases. Each test case file (*.robot) contains examples focusing on specific functionalities of the Browser Library.

4. **Execute Test Cases**: Run the test cases using the Robot Framework command-line tool. For example:

```
robot <test_case_file.robot>
```
5. **Experiment and Learn**: Modify existing test cases or create new ones to experiment with different methods and scenarios. Use the official Robot Framework Browser Library documentation as a reference guide.


## Structure of the project (Saucedemo)
### Project description
The objective of the Saucedemo project was to practice automated testing by creating and executing a few fundamental test cases. This website serves as an ideal platform for honing testing skills due to its simplicity. The test cases focused on basic functionalities such as login, product browsing, and checkout processes. Through this project, I gained valuable hands-on experience in automated testing while working with a straightforward yet effective testing environment.

## Structure of the project
The project structure consists of the following components:
- <code>login-selectors.robot</code> - practising different styles of selectors

- <code>loginWithVerification.robot</code> - this test case automates login functionality on the website. It includes scenarios for both successful and unsuccessful login attempts using if conditions

- <code>numberProducts.robot</code> - this test case automates the process of logging in to the website as a user and verifies the number of available products on the page.

## Author
Me, Veronika.

## Sources
- used page: https://www.saucedemo.com/
