# 📱 How to Run a Flutter App on Android

This guide will help you set up, run, and build a Flutter app on an Android device or emulator.

## 🔹 Step 1: Install Flutter

1. Download the **Flutter SDK** from the official site: [Flutter Install](https://flutter.dev/docs/get-started/install).
2. Extract the downloaded file and add the Flutter **bin** directory to your system path.
3. Verify the installation by running:
   ```bash
   flutter doctor
   ```
   If there are any issues, follow the suggested fixes.

## 🔹 Step 2: Install Android Studio

1. Download and install **Android Studio** from [here](https://developer.android.com/studio).
2. Open **Android Studio** and go to:
   - **Settings → Plugins** → Install **Flutter** & **Dart** plugins.
3. Install the **Android SDK** and necessary dependencies during setup.

## 🔹 Step 3: Set Up an Android Device

### Option 1: Use a Physical Android Device

1. Enable **Developer Options**:
   - Go to **Settings → About Phone → Tap "Build Number" 7 times** to enable Developer Mode.
2. Enable **USB Debugging**:
   - Go to **Settings → Developer Options → Enable USB Debugging**.
3. Connect your phone via USB and check if it's detected using:
   ```bash
   flutter devices
   ```

### Option 2: Use an Android Emulator

1. Open **Android Studio** → **AVD Manager** → Create a new virtual device.
2. Select a device model and system image, then start the emulator.
3. Run:
   ```bash
   flutter devices
   ```
   It should list your emulator.

## 🔹 Step 4: Clone or Create a Flutter Project

- **To clone an existing project**:

  ```bash
  git clone https://github.com/jettinsha/listing_app.git
  cd your-flutter-project
  ```



## 🔹 Step 5: Install Dependencies

Before running the app, install necessary dependencies:

```bash
flutter pub get
```

## 🔹 Step 6: Run the Flutter App

Now, start the app on your connected device or emulator:

```bash
flutter run
```

This will launch the app and display logs in the terminal.


```bash
flutter doctor
```

This will show any missing dependencies or configuration issues.

---




login email ID and Password

userName1 = "temp@gmail.com
password1 = "12345678
userName2 = "hello@gmail.com
password2 = "440019

## ✅ You're All Set! 🚀

Your Flutter app is now running on Android. Let me know if you need further help! 😊

