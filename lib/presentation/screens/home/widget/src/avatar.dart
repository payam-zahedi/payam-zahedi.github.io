import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive.dart';

class ImageAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: context.isTablet() ? 12 : 18,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 12,
                  spreadRadius: 4,
                )
              ]),
          child: ClipOval(
            child: Image.network(
              'https://hotfaz.ir/wp-content/uploads/2020/06/360284_857.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
