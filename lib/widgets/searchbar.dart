import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35.0),
              borderSide: BorderSide(
                color: Colors.orange
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35.0),
              borderSide: BorderSide(
                color: Colors.grey.shade300,
                width: 2.0,
              ),
            ),
            hintText: 'Search',
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35)
            )
        ),
      ),
    );
  }
}
