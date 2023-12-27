import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String selectedSize = '';

  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: GoogleFonts.syne(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  selectSize('S');
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selectedSize == 'S'
                          ? Color.fromRGBO(129, 41, 4, 1).withOpacity(0.2)
                          : Colors.transparent,
                      border: Border.all(
                        width: 0.5,
                        color: selectedSize == 'S'
                            ? Color.fromRGBO(129, 41, 4, 1)
                            : Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  height: 50,
                  width: 115,
                  child: Center(
                      child: Text('S',
                          style: GoogleFonts.sora(
                              fontSize: 15,
                              color: selectedSize == 'S'
                                  ? Color.fromRGBO(129, 41, 4, 1)
                                  : Colors.black,
                              fontWeight: FontWeight.w400))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  selectSize('M');
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selectedSize == 'M'
                          ? Color.fromRGBO(129, 41, 4, 1).withOpacity(0.2)
                          : Colors.transparent,
                      border: Border.all(
                        width: 0.5,
                        color: selectedSize == 'M'
                            ? Color.fromRGBO(129, 41, 4, 1)
                            : Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  height: 50,
                  width: 115,
                  child: Center(
                      child: Text('M',
                          style: GoogleFonts.sora(
                              fontSize: 15,
                              color: selectedSize == 'M'
                                  ? Color.fromRGBO(129, 41, 4, 1)
                                  : Colors.black,
                              fontWeight: FontWeight.w400))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  selectSize('L');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedSize == 'L'
                        ? Color.fromRGBO(129, 41, 4, 1).withOpacity(0.2)
                        : Colors.transparent,
                    border: Border.all(
                      width: 0.5,
                      color: selectedSize == 'L'
                          ? Color.fromRGBO(129, 41, 4, 1)
                          : Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  width: 115,
                  child: Center(
                      child: Text('L',
                          style: GoogleFonts.sora(
                              fontSize: 15,
                              color: selectedSize == 'L'
                                  ? Color.fromRGBO(129, 41, 4, 1)
                                  : Colors.black,
                              fontWeight: FontWeight.w400))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
