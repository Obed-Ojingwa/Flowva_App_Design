
---

# 📱 Subscription Tracker UI

A Flutter-based **subscription tracking UI** inspired by modern minimal app designs.
The design emphasizes **soft gradients, rounded cards, glassmorphism, and clean typography** to make subscription management visually appealing and user-friendly.

---

## ✨ Features

* 🎨 **Modern UI design** with gradient backgrounds and glassy card effects
* 📦 **Subscription cards** (Framer, Figma, Notion, ChatGPT, etc.)
* 💳 Clear display of **price, due dates, and actions** (`View`, `Remind`, `Cancel`)
* 🖼️ **Image asset management** via `assets/images/`
* 🔘 Beautiful **"Get Started" button** for navigation
* ⚡ Built with **Flutter + Dart** for cross-platform performance

---

## 🛠️ Tools & Technologies

* **Flutter** (UI toolkit for cross-platform development)
* **Dart** (programming language)
* **VS Code / Android Studio** (IDE used for development)
* **Canva / Figma (optional)** for UI inspiration
* **Assets Management** (all icons and images stored in `assets/images/`)

---

## 📂 Project Structure

```plaintext
lib/
 ├── main.dart        # Entry point
 ├── second.dart      # Second screen (navigated via Get Started button)
assets/
 └── images/          # Stores app icons & subscription logos
```

---

## 🚀 Getting Started

1. Clone this repository:

```bash
git clone https://github.com/your-username/subscription-tracker-ui.git
```

2. Navigate to the project folder:

```bash
cd subscription-tracker-ui
```

3. Get dependencies:

```bash
flutter pub get
```

4. Run the app:

```bash
flutter run
```

---

## ⚔️ Challenges Encountered

* **UI precision** – Replicating the exact soft gradient and glassy effect required careful use of `BoxDecoration`, shadows, and transparency.
* **Alignment & spacing** – Getting the **cards and buttons** to match the design took tweaking with `Padding`, `SizedBox`, and `MainAxisAlignment`.
* **Asset management** – Ensuring all images loaded correctly from `assets/images/` required proper `pubspec.yaml` configuration.
* **Cross-device consistency** – The design looks slightly different across iOS and Android, so responsiveness and scaling had to be considered.

---

## 📸 Preview

*(Add screenshots of your UI here, e.g. from `assets/screenshots/`)*

---

## 👨‍💻 Author

* **Your Name**
* Aspiring Flutter & Kotlin Developer
* 💼 [LinkedIn](https://linkedin.com/in/your-profile) | 🌐 [GitHub](https://github.com/your-username)

---

⚡ Built with love using Flutter ❤️

---
