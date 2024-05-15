import 'package:agropro1/model/diagnosemodel.dart';
import 'package:flutter/material.dart';

class Diagnosepage2Widget extends StatefulWidget {
  const Diagnosepage2Widget({Key? key}) : super(key: key);

  @override
  _Diagnosepage2WidgetState createState() => _Diagnosepage2WidgetState();
}

class _Diagnosepage2WidgetState extends State<Diagnosepage2Widget> {
  late Diagnosepage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        Diagnosepage2Model(); // Assuming Diagnosepage2Model is a class you've defined

    _model.textController = TextEditingController();
    _model.textFieldFocusNode = FocusNode();

    WidgetsBinding.instance!.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFECF0EA),
        appBar: AppBar(
          backgroundColor: const Color(0xFFECF0EA),
          automaticallyImplyLeading: false,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Plant\'s ',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF666666),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Diseases',
                  style: TextStyle(
                    color: Color(0xFF6FBD53),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
              style: TextStyle(
                fontFamily: 'Readex Pro',
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 376,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      width: 378,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Color(0xFFECF0EA),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const Alignment(-0.95, 0.04),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                width: 298,
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Search disease by name',
                                    labelStyle: const TextStyle(
                                      fontFamily: 'Readex Pro',
                                    ),
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Readex Pro',
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.green,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: const Icon(
                                      Icons.search_rounded,
                                      color: Color(0xFF6FBD53),
                                    ),
                                  ),
                                  style: const TextStyle(
                                    fontFamily: 'Readex Pro',
                                  ),
                                  validator: _model.textControllerValidator,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const Alignment(0.89, 0.08),
                            child: IconButton(
                              icon: const Icon(
                                Icons.notifications_sharp,
                                color: Color(0xFF6FBD53),
                                size: 24,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildDiseaseContainer(
                          context,
                          'black spot',
                          'assets/images/Rectangle_2429_(11).png',
                        ),
                        _buildDiseaseContainer(
                          context,
                          'fungi',
                          'https://picsum.photos/seed/472/600',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildDiseaseContainer(
                          context,
                          'Powdery mildew',
                          'https://picsum.photos/seed/472/600',
                        ),
                        _buildDiseaseContainer(
                          context,
                          'Downy mildew',
                          'https://picsum.photos/seed/472/600',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildDiseaseContainer(
                          context,
                          'Blight',
                          'assets/images/Rectangle_2429_(4).png',
                        ),
                        _buildDiseaseContainer(
                          context,
                          'Canker',
                          'assets/images/Rectangle_2429_(6).png',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildDiseaseContainer(
                          context,
                          'Abiotic',
                          'assets/images/Rectangle_2429_(10).png',
                        ),
                        _buildDiseaseContainer(
                          context,
                          'Alternaria',
                          'assets/images/Rectangle_2429_(11).png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDiseaseContainer(
      BuildContext context, String name, dynamic image) {
    return Container(
      width: 167,
      height: 193,
      decoration: const BoxDecoration(
        color: Colors.white, // Change color as needed
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                image is String ? image : '',
                width: 300,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
