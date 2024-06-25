import 'package:flutter/material.dart';

class PageView extends StatefulWidget {
  const PageView({super.key});

  @override
  State<PageView> createState() => _PageViewState();
}

List<String> images = [
  'assets/images/2.jpg',
  'assets/images/3.webp',
  'assets/images/4.jpg',
];

late List<Widget> pages;

class _PageViewState extends State<PageView> {
  @override
  void initState() {
    super.initState();
    pages = List.generate(
        images.length, (index) => ImagePlaceHolder(iamgePath: images[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View Test'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

class ImagePlaceHolder extends StatelessWidget {
  const ImagePlaceHolder({super.key, required this.iamgePath});
  final String iamgePath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iamgePath,
      fit: BoxFit.cover,
    );
  }
}
