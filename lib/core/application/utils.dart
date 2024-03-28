import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void showSnackbar(BuildContext context, String content, {Duration? duration}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(content),
    duration: duration ?? const Duration(seconds: 2),
  ));
}

Future<List<File>> pickImages() async {
  List<File> images = [];
  final picker = ImagePicker();
  final imageFiles = await picker.pickMultiImage();
  if (imageFiles.isNotEmpty) {
    for (final image in imageFiles) {
      images.add(File(image.path));
    }
  }
  return images;
}

Future<File?> pickImage({ImageSource imageSource = ImageSource.gallery}) async {
  final picker = ImagePicker();
  final imageFile = await picker.pickImage(source: imageSource);
  if (imageFile != null) {
    return File(imageFile.path);
  }
  return null;
}

String getLinkFromText(String text) {
  List<String> wordsInSentence = text.split(' ');
  String link = '';
  for (String word in wordsInSentence) {
    if (word.startsWith('https://') || word.startsWith('www.')) {
      link = word;
    }
  }
  return link;
}
