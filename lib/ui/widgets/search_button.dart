import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(0.07),
      ),
      margin: const EdgeInsets.all(20),
      child: TextField(
        style: TextStyle(color: Colors.white.withOpacity(0.8), decoration: TextDecoration.none),
        decoration: InputDecoration(
            isCollapsed: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            prefixIcon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
            border: InputBorder.none
        ),
      ),
    );
  }
}