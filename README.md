# Car Slot Available App

Car Slot Available App is a mobile application developed using Flutter framework that allows users to check the availability of parking slots in a parking lot and book them in real-time. The application is integrated with an Arduino board that controls the parking slots and a Firebase database that stores information about available slots and bookings.

## Features

The application offers the following features:

- **Login and Register Pages:** Allows users to create an account and login to access restricted content.

- **Slot Page:** Displays the details of all available parking slots in the parking lot. Slots can be filtered by type, such as car or bike.

- **Booking Page:** Allows users to book a parking slot in real-time. The application uses the Arduino board to check the availability of the selected slot and reserve it.

## Getting Started

To get started with the application, follow these steps:

1. Clone this repository using `git clone https://github.com/your-username/car-slot-app.git`.
2. Install Flutter and the necessary dependencies.
3. Connect the Arduino board to your computer and upload the code in `arduino-code.ino` to the board.
4. Configure your Firebase project and add the `google-services.json` file to the `android/app` directory.
5. Run `flutter run` to launch the application on your local device.

## Screenshots

| Login Page | Register Page |
| --- | --- |
| ![Login Page](screenshots/login.png "Login Page") | ![Register Page](screenshots/register.png "Register Page") |

| Slot Page | Booking Page |
| --- | --- |
| ![Slot Page](screenshots/slot.png "Slot Page") | ![Booking Page](screenshots/booking.png "Booking Page") |

## Contributing

Contributions are always welcome! To contribute to the application, follow these steps:

1. Fork this repository.
2. Create a new branch with your changes using `git checkout -b my-feature`.
3. Make your changes and commit them using `git commit -am 'Add some feature'`.
4. Push your changes to your fork using `git push origin my-feature`.
5. Submit a pull request with your changes.
 

This application is licensed under the [MIT License](https://opensource.org/licenses/MIT).
