# ColorChangerApp
A simple Flutter app that lets you change the background color by tapping or entering text.
Features

    Tap anywhere to generate a random background color
    Select text from a dropdown menu to pick a specific color
    Text color automatically inverts based on contrast with background

Code Overview

The app consists of:

    main.dart - Runs the MyApp widget
    app.dart - Sets up theme and home page
    home_page.dart - Stateful widget handles color changing logic
    text_picker.dart - Reusable widget for selecting text
    random_color.dart - Generates random color values

Running the App

To run the app:

    Tap anywhere on the screen to randomly change the background
    Select text from the dropdown menu to pick a specific color
    The text color will invert automatically based on contrast

Testing

Tests are located in test/color_changer_test.dart and can be run with:

Copy code
flutter test

They verify that:

    Tapping updates the background color
    Entering text updates the color based on the selection
    Invalid text defaults to a color

Future Improvements

Some ideas for enhancing the app:

    Add more text/color options
    Animate color transitions
    Allow custom color selection
