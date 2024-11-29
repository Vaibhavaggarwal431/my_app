import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:my_app/constants.dart';

class Addbiodata4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: kPrimaryColor),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Wrap(
                spacing: 16, // Horizontal spacing between items
                runSpacing: 16, // Vertical spacing between rows
                children: [
                  _buildDottedImageBox(isLarge: "Big"), // Larger first box
                  Column(
                    children: [
                      _buildDottedImageBox(),
                      const SizedBox(
                        height: 10,
                      ),
                      _buildDottedImageBox(),
                    ],
                  ),

                  _buildDottedImageBox(isLarge: "small"),
                  _buildDottedImageBox(isLarge: "small"),
                  _buildDottedImageBox(isLarge: "small"),
                  _buildDottedImageBox(isLarge: "small"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "golo",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDottedImageBox({String? isLarge}) {
    // Adjust dimensions for large and small boxes
    final double width = isLarge == "Big"
        ? 190
        : isLarge == "small"
            ? 78
            : 143;
    final double height = isLarge == "Big"
        ? 156
        : isLarge == "small"
            ? 74
            : 74;

    return SizedBox(
      width: width,
      height: height,
      child: Container(
        color: const Color.fromRGBO(255, 250, 246, 1),
        child: DottedBorder(
          color: Colors.red,
          strokeWidth: 2,
          dashPattern: [6, 3],
          borderType: BorderType.RRect,
          radius: const Radius.circular(8.0),
          child: const Center(
            child: Icon(
              Icons.add,
              color: kPrimaryColor,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
