## 🚀 Flutter Swipe Transition

A lightweight, customizable Swipe (Slide) Page Transition library for Flutter.
Create smooth swipe animations with full control over direction, duration, curve, and constructor-based navigation — without any third-party dependencies.

---
## ✨ Features

- ✅ Custom swipe page transitions

- ✅ Supports all directions (left, right, top, bottom)

- ✅ Constructor parameter passing

- ✅ Clean & reusable API

- ✅ No third-party packages

- ✅ Works on Android, iOS, Web, Desktop

---
## Preview 

https://github.com/user-attachments/assets/3c40d80f-3f18-425d-9634-64d9388e1940

---
## 📁 File Structure
```
flutter_swipe_transition/
├── lib/
│   ├── flutter_swipe_transition.dart   # Main export file
│   └── src/
│       └── swipe_direction.dart         # Enum for directions
│
├── example/
│   └── main.dart                        # Example app
│
├── README.md                            # Documentation
├── LICENSE                              # Excelsior License
├── pubspec.yaml                         # Package config
├── CHANGELOG.md                         # Version history
└── analysis_options.yaml                # Lint rules (optional)
```
---
## 📦 Installation
Add this to your pubspec.yaml:
```
dependencies:
  flutter_image_compression:
    git:
      url: https://github.com/Excelsior-Technologies-Communitye/flutter_swipe_transition.git
```
then run:
```
pub get
```

---
## 🚀 Usage Example

Navigate with Swipe Transition
```
Navigator.push(
  context,
  SwipeTransitionRoute(
    page: DetailPage(
      title: 'Swipe Transition',
      id: 101,
    ),
    direction: SwipeDirection.rightToLeft,
  ),
);
```
---
## 📋 Properties

| Property|	Description|
|--------|------------|
| page | Widget to navigate to |
| direction |	Direction of the swipe transition |
| duration |	Duration of the transition animation |
| curve |	Animation curve for the swipe effect |

---
## 📄 LICENSE

```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Image Compression library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM,
OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
