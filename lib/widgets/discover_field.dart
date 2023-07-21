import 'package:flutter/material.dart';

class DiscoverField extends StatelessWidget {
  const DiscoverField({
    super.key,
    required this.title,
    this.isSelected = false,
    required this.onClick,
  });
  // this is the content of each Discovery Field type to be shown . 
  final String title;
  final bool isSelected;
  final Function() onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? Colors.blue : Colors.grey[200],
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
