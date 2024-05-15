import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BottomSheetPageWidget extends StatelessWidget {
  const BottomSheetPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 50,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F4F8),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Detection Result',
                    style: TextStyle(
                      color: Color(0xFF599742),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                 
                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Curly top is a viral disease that affects many crops. This disease causes plants to become smaller in size, have shriveled petals and leaves, and are twisted and pulled out of shape. They are often caused by curtoviruses (genus Curtovirus), members of the virus family Geminiviridae.',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Photo Disease',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 107,
                    child: CarouselSlider(
                      items: [
                        Image.asset(
                          'assets/images/Rectangle 2420.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/Rectangle 2425.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/Rectangle 2422.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/Rectangle 2423.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                      options: CarouselOptions(
                        initialPage: 3,
                        viewportFraction: 0.5,
                        disableCenter: true,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.25,
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: false,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Possible cure',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'The BLH has a piercing-sucking feeding habit; thus, the virus is spread or injected from the insect\'s salivary gland into its new host as the insect pierces and feeds on non-infected plants. Virus-infected plants cannot be treated and should be removed.',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Prevention',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle 2423.png', // Replace with actual image URL
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Fungicide',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle 2423.png', // Replace with actual image URL
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Insect control',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle 2423.png', // Replace with actual image URL
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Clean tools',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
