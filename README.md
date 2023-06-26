# Flutter Starter Kit

Flutter Starter Kit is a simple starter app that provides a solid foundation for building Flutter applications. It includes core functionalities such as state management, theme changing, localization, and AdMob integration.

## Getting Started

Follow the steps below to set up the Flutter Starter Kit on your local machine.

### Step 1: Update AdMob ID

1. Open the file `android/app/src/main/res/values/api_keys.xml`.
2. Replace the test AdMob ID with your own AdMob ID.
3. Copy the file `lib/core/config/config_example.dart` as `lib/core/config/config.dart`, and change the IDs with your own IDs. You can add new ones if you wish. 

### Step 2: Update Package Name

To change the package name of the Flutter Starter Kit, follow these steps:

1. Open the file `android/app/src/main/AndroidManifest.xml`.
2. Replace the package name with your desired package name.
3. Update the package name in all related files and folders.

### Step 3: Update App Icon

To change the app icon in Flutter Starter Kit, follow these steps:

1. Replace the default app icon with your own icon file. The default app icon is located at `assets/images/logo.png`.
2. Open the terminal and navigate to the project directory.
3. Run the command `dart run flutter_launcher_icons` to apply the changed app icon.

### Step 4: Translate Files

To translate the app into different languages, follow these steps:

1. Open the file `lib/core/translations/translation_keys.dart`.
2. Describe the translation keys you want to use in your app.
3. Go to the `lib/core/translations/langs` folder.
4. Update the translation files according to the desired language. You can add new ones if you wish.
5. If you added new language files, register them in `lib/core/translations/languages.dart`.
6. Define the recently added languages in `lib/core/data/languages_list.dart`.

### Step 5: Adding New Controllers

To add new controllers to app, follow these steps:

1. Controllers are in `lib/core/controllers/` folder. Open the folder.
2. Create your controller (e.g. `SettingsController`) in a new folder (e.g. `settings`).
3. Register your controller in `lib/main.dart` with `Get.put()`.
4. Define your controller in `lib/core/base/base_controller.dart` with `Get.find()`.
5. You can use it like `BaseController.settingsController`.

## Features

- State management using Get.
- Theme changing functionality.
- Localization support.
- AdMob integration for showing ads.

## Contributing

Contributions to Flutter Starter Kit are welcome! If you find any issues or have suggestions for improvements, please submit a pull request or open an issue on the GitHub repository.

## License

Flutter Starter Kit is released under the [MIT License](https://opensource.org/licenses/MIT). You are free to use, modify, and distribute this starter kit.

## Contact

For any further questions or inquiries, you can open a pull request. Thanks!