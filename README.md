# Patrol Cursor Issue

A showcase for the blinking cursor golden test issue.

## Getting Started

Uses Flutter 3.10.6 and FVM (optional)

I've tried to create a minimum showcase for the problem, that it's not possible to take golden tests for a blinking cursor.  
I've added tests for both "the flutter way" and "the patrol" way of navigating.  
While I've created the tests, I've learned, that the golden toolkit has a way of ignoring animations such as the cursor in the `customPump` field.  
To execute the tests, simply use the provided AndroidStudio run configurations or run:

`flutter test --update-goldens test/the_flutter_way/with_flutter_test.dart`  
`flutter test --update-goldens test/the_patrol_way/with_patrol_test.dart`

To make the tests fail or work, simply play with the parameters marked with `// TODO` in the test files and the `pin_widget.dart` file.

I hope this helps you to understand the problem and maybe find a solution.

By the way, when we were working on the problem on my machine, we also tried not settling with the `customPump` but it still didn't work.
