# Festival Post App
Welcome to the Festival Post App! This Flutter application allows users to create and customize festival posts with features for changing backgrounds, adjusting font sizes, customizing colors, sharing posts, and saving them. Below are the details on how to use these features, along with package code examples.

## Features
### 1. Background Change
Description: Users can select from a variety of pre-defined backgrounds or upload their own images to use as the background for their festival post.

Code Example:

```dart
Copy code
import 'package:image_picker/image_picker.dart';

// Function to pick an image from the gallery
Future<void> _pickImage() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

  if (image != null) {
    setState(() {
      _backgroundImage = File(image.path);
    });
  }
}

// Widget to display the background
Widget _buildBackground() {
  return _backgroundImage != null
      ? Image.file(_backgroundImage!)
      : Container(color: Colors.white); // default background
}
```
```dart
Dependencies:
```

### yaml
```dart
dependencies:
  image_picker: ^0.8.5+3
  ```
### 2. Font Size Adjustment
Description: Allows users to adjust the font size of the text in their posts using a slider.


```dart
Copy code
import 'package:flutter/material.dart';

// Function to build font size slider
Widget _buildFontSizeSlider(double fontSize, Function(double) onChanged) {
  return Slider(
    value: fontSize,
    min: 10,
    max: 50,
    onChanged: onChanged,
    label: 'Font Size: ${fontSize.toStringAsFixed(1)}',
  );
}

// Usage in a StatefulWidget
class PostEditor extends StatefulWidget {
  @override
  _PostEditorState createState() => _PostEditorState();
}

class _PostEditorState extends State<PostEditor> {
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFontSizeSlider(_fontSize, (newSize) {
          setState(() {
            _fontSize = newSize;
          });
        }),
        Text(
          'Festival Post',
          style: TextStyle(fontSize: _fontSize),
        ),
      ],
    );
  }
}
```
```dart
3. Color Customization
Description: Users can customize text color and background color with a color picker.

```

```dart
Copy code
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

// Function to build color picker dialog
void _pickColor(BuildContext context, Color currentColor, ValueChanged<Color> onColorChanged) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Pick a Color'),
        content: ColorPicker(
          pickerColor: currentColor,
          onColorChanged: onColorChanged,
          showLabel: true,
        ),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

// Usage example in a StatefulWidget
class ColorCustomizer extends StatefulWidget {
  @override
  _ColorCustomizerState createState() => _ColorCustomizerState();
}

class _ColorCustomizerState extends State<ColorCustomizer> {
  Color _textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _pickColor(context, _textColor, (color) {
              setState(() {
                _textColor = color;
              });
            });
          },
          child: Text('Pick Text Color'),
        ),
        Text(
          'Festival Post',
          style: TextStyle(color: _textColor),
        ),
      ],
    );
  }
}
```
```dart
Dependencies:

dependencies:
  flutter_colorpicker: ^1.0.3
  ```
  

### 4. Share
Description: Share the created post directly from the app to various platforms using the share_plus package.



```dart
Copy code
import 'package:share_plus/share_plus.dart';

// Function to share the post
void _sharePost(String postContent) {
  Share.share(postContent);
}

// Usage example
ElevatedButton(
  onPressed: () {
    _sharePost('Check out my festival post!');
  },
  child: Text('Share'),
)
```
```dart
Dependencies:


yaml
Copy code
dependencies:
  share_plus: ^6.0.0
  ```
### 5. Save
Description: Save the created posts locally on the device using the path_provider and dart:io packages.

Code Example:

```dart
Copy code
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/material.dart';

// Function to save a post to local storage
Future<void> _savePost(String postContent) async {
  final directory = await getApplicationDocumentsDirectory();
  final file = File('${directory.path}/post.txt');
  await file.writeAsString(postContent);
}
```
```dart
// Usage example
ElevatedButton(
  onPressed: () {
    _savePost('My Festival Post Content');
  },
  child: Text('Save Post'),
)
```
<p>
 

  <img src="https://github.com/user-attachments/assets/f2825cb9-ad44-4a17-b71c-a3945986cbe3" width="22%" Height="35%">
  
  <img src="https://github.com/user-attachments/assets/72bac92b-0a9b-4d9b-a595-a36b1faad1a0" width="22%" Height="35%">
   <img src="https://github.com/user-attachments/assets/a2b5c213-b7e1-47df-87e4-bbbfd80df0ce" width="22%" Height="35%">
  
  <img src="https://github.com/user-attachments/assets/392558a7-4fd9-4f03-b715-fabd0de7df10" width="22%" Height="35%">
  
  <img src="https://github.com/user-attachments/assets/d303119f-7e07-42a0-b456-c6e45002a698" width="22%" Height="35%">
  
  <img src="https://github.com/user-attachments/assets/304d9b97-cc5f-4b37-89f3-7d163ec925e2" width="22%" Height="35%">
  </p>



https://github.com/user-attachments/assets/e43e641d-32fd-47b5-a9c6-055be38a9dc1

