import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class BookReviewScreen extends StatelessWidget {
  const BookReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // استخدم MediaQuery للحصول على أحجام الشاشة
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.02,
                right: screenWidth * 0.25,
                left: screenWidth * 0.06,
                bottom: screenHeight * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KBookScreenView);
                    },
                    child: Icon(Icons.arrow_back, color: Color(0xff111111)),
                  ),
                  Text(
                    "Booking Review",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff111111),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight * 0.15,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: screenHeight * 0.12,
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/flutter2.jpg"),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Flutter Course",
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff111111),
                        ),
                      ),
                      Text(
                        "inside",
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff555555),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.location_on_outlined,
                    size: screenWidth * 0.07,
                    color: Color(0xffBF1522),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.15,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Booking Details",
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: screenWidth * 0.025,
                                height: screenWidth * 0.025,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffBF1522),
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.0025,
                                height: screenHeight * 0.05,
                                color: Color(0xffBF1522),
                              ),
                              Container(
                                width: screenWidth * 0.025,
                                height: screenWidth * 0.025,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffBF1522),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: screenWidth * 0.025),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tus, 13 Feb 2024 04:00 PM',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: Color(0xff464646),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.03),
                              Text(
                                'Tus, 13 Feb 2024 10:00 PM',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: Color(0xff464646),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.chair,
                            color: Color(0xffBF1522),
                            size: screenWidth * 0.05,
                          ),
                          SizedBox(width: screenWidth * 0.01),
                          Text(
                            '1 Seat',
                            style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              color: Color(0xff515151),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: screenWidth * 0.25,
                    child: ElevatedButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.KBookScreenView);
                      },
                      child: Text(
                        'Change',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffBF1522),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.15,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.025),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Method',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                    Text(
                      'You will not be debited until your booking is confirmed',
                      style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff464646),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Color(0xffBF1522),
                          size: screenWidth * 0.04,
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Text(
                          'Add card',
                          style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff494949),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.35,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.01),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discounts Available',
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.3,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Add promo',
                              style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffBF1522),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Container(
                    width: screenWidth * 0.85,
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xff9A9A9A),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.local_activity, size: screenWidth * 0.05),
                          Text(
                            "30% off  10 booking (up to EGP 150)",
                            style: TextStyle(
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9A9A9A),
                            ),
                          ),
                          Container(
                            width: screenWidth * 0.25,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffBF1522),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xda9a9a9a),
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Booking Charges",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111111),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xda9a9a9a),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "x1 Day EGP 100.0 x 1 Seat",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff464646),
                          ),
                        ),
                        Text(
                          "EGP 100.0",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111111),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Due",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffF04C29),
                          ),
                        ),
                        Text(
                          "EGP 100.0",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffF04C29),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.KBookHistoryScreen);
                },
                child: Text(
                  'Book',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffBF1522),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.KBookScreenView);
                },
                child: Text(
                  'Cancellation Policy',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff919393),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
          ],
        ),
      ),
    );
  }
}
