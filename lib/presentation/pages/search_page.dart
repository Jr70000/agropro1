import 'package:flutter/material.dart';

class SearchpageWidget extends StatefulWidget {
  const SearchpageWidget({Key? key}) : super(key: key);

  @override
  State<SearchpageWidget> createState() => _SearchpageWidgetState();
}

class _SearchpageWidgetState extends State<SearchpageWidget> {
  late TextEditingController _textController;
  late FocusNode _textFieldFocusNode;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _textFieldFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _textController.dispose();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_textFieldFocusNode.canRequestFocus) {
          FocusScope.of(context).requestFocus(_textFieldFocusNode);
        } else {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF666666),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        cursorColor: const Color(0x666666),
                        controller: _textController,
                        focusNode: _textFieldFocusNode,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.search, color: Colors.green),
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          labelText: 'Search plant by name',
                          labelStyle: const TextStyle(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          ),
                          hintStyle: const TextStyle(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          ),
                          enabledBorder:  UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.green, // Your color
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder:  UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent, // Your color
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        style: const TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      width: 75.2,
                      height: 94,
                      decoration: const BoxDecoration(
                        color: Color(0xFF666666),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/unsplash_7d7OR-RvufU.png',
                              width: 300,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(
                                Icons.person_outline,
                                size: 24,
                              ),
                              color: Colors.white,
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 16.0,
                right: 16.0,
                top: 128.0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Complete Identification',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 146,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/Rectangle 2420.png',
                            width: 300,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Please wait for a few minutes after submission for the results.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size(207, 45),
                        ),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        child: const Text('Diagnose'),
                      ),
                      const SizedBox(height: 16.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Save and diagnose later',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.green,
                              letterSpacing: 0,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.green,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 16.0,
                top: 16.0,
                child: Text(
                  'Previous results ',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Colors.green,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Positioned(
                right: 16.0,
                top: 16.0,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.green,
                  size: 20,
                ),
              ),
              Positioned(
                left: 80.0,
                bottom: 10.0,
                child: Container(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.home),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.person),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
