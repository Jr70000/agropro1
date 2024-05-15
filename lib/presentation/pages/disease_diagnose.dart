import 'package:agropro1/utils/app_bottomsheet.dart';
import 'package:flutter/material.dart';

class DiseasediagnoseWidget extends StatefulWidget {
  const DiseasediagnoseWidget({Key? key}) : super(key: key);

  @override
  _DiseasediagnoseWidgetState createState() => _DiseasediagnoseWidgetState();
}

class _DiseasediagnoseWidgetState extends State<DiseasediagnoseWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap
      },
      child: Scaffold(
        backgroundColor: Colors.white, // Set your desired background color
        body: NestedScrollView(
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 150,
              collapsedHeight: null,
              pinned: false,
              floating: false,
              backgroundColor: Colors.transparent, // Set your desired background color
              automaticallyImplyLeading: true,
              actions: [],
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/Rectangle 2420.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              centerTitle: true,
              elevation: 4,
            )
          ],
          body: Builder(
            builder: (context) {
              return const SafeArea(
                top: false,
                child: Stack(
                  children: [
                    SingleChildScrollView(child: BottomSheetPageWidget())
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
