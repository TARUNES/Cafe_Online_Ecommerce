import 'package:e_commerce/features/widgets/frosted_glass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastOrdered extends StatefulWidget {
  const LastOrdered({super.key});

  @override
  State<LastOrdered> createState() => _LastOrderedState();
}

class _LastOrderedState extends State<LastOrdered> {
  @override
  Widget build(BuildContext context) {
    return FrostedGlass(
      borderradius: 10,
      height: 100,
      width: double.infinity,
      child: Container(
        height: 100,
        width: double.infinity,
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     color: Colors.white.withOpacity(0.4)),
        padding: EdgeInsets.fromLTRB(10, 5, 20, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Last Order",
                  style: GoogleFonts.oswald(
                      letterSpacing: 1, fontSize: 16, color: Colors.black87),
                ),
                Icon(
                  Icons.close_rounded,
                  size: 20,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Item_Stack(),
                Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(129, 41, 4, 0.6),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    'Order',
                    style: GoogleFonts.syne(fontSize: 18, color: Colors.black),
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item_Stack extends StatelessWidget {
  const Item_Stack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red.withOpacity(.7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent.withOpacity(.7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orangeAccent.withOpacity(.7),
            ),
          ),
        ],
      ),
    );
  }
}
