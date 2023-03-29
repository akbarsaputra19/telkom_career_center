part of '../pages.dart';

class InputEducation extends StatefulWidget {
  const InputEducation({super.key});

  @override
  State<InputEducation> createState() => _InputEducationState();
}

class _InputEducationState extends State<InputEducation> {
  bool _isEducation = false;

  final TextEditingController _stage = TextEditingController();
  final TextEditingController _universityInstitution = TextEditingController();
  final TextEditingController _major = TextEditingController();
  final TextEditingController _currentlyEducation = TextEditingController();
  final TextEditingController _dateSelected = TextEditingController();
  final TextEditingController _additionalInformation = TextEditingController();

  Image iconCurrentlyEducation() {
    if (_isEducation) {
      _currentlyEducation.text = "Ya";
      setState(() {
        _isEducation = false;
      });
      return Image.asset("assets/icons/toggle-on.png");
    } else {
      _currentlyEducation.text = "Tidak";
      setState(() {
        _isEducation = true;
      });
      return Image.asset("assets/icons/toggle-off.png");
    }
  }

  void currentlyEducationOnClick() {
    setState(() {
      _isEducation = !_isEducation;
    });
  }

  void showMoreStage() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.3,
        maxChildSize: 0.4,
        minChildSize: 0.17,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.only(left: 18, top: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _stage.text = "SMA/SMK";
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "SMA/SMK",
                          style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _stage.text = "D3";
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "D3",
                          style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                          ),
                        ),
                      )
                    ]
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _stage.text = "S1";
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "S1",
                          style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                          ),
                        ),
                      )
                    ]
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _stage.text = "S2";
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "S2",
                          style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                          ),
                        ),
                      )
                    ]
                  ),
                ],
              ),
            ),
          );
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          centerTitle: true,
          elevation: 0.5,
          leading: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xff333333)
          ),
          title: const Text('Pendidikan'),
          titleTextStyle: const TextStyle(
            fontFamily: 'inter_semibold',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333)
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              color: Colors.grey[100],
              child: Column(
                children: <Widget> [
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Jenjang",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                      )
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _stage,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        hintText: "Jenjang",
                        suffixIcon: IconButton(
                          onPressed: showMoreStage,
                          icon: Image.asset("assets/icons/chevron-down.png")
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      )
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Nama Universitas/Institusi",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                      )
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _universityInstitution,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        hintText: "Nama Universitas/Institusi",
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Jurusan",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                      )
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _major,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        hintText: "Jurusan",
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Masih Dalam Pendidikan",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                      )
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _currentlyEducation,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: currentlyEducationOnClick,
                          icon: iconCurrentlyEducation()
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      )
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Mulai Pendidikan",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                      )
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _dateSelected,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        hintText: "DD/MM/YYYY",
                        // suffixIcon: IconButton(
                        //   onPressed: ,
                        //   icon: 
                        // ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      )
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Selesai Pendidikan",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                      )
                    )
                  ),
                  Visibility(
                    visible: (_isEducation ? true : false),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                      child: TextFormField(
                        cursorColor: const Color(0xff333333),
                        controller: _dateSelected,
                        style: const TextStyle(
                          fontFamily: "inter_regular",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333),
                        ),
                        decoration: InputDecoration(
                          hintText: "DD/MM/YYYY",
                          // suffixIcon: IconButton(
                          //   onPressed: ,
                          //   icon: 
                          // ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff666666),
                            )
                          ),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          ),
                          fillColor: const Color(0xffFFFFFF),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Informasi Tambahan",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)
                      )
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _additionalInformation,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        hintText: "Informasi Tambahan",
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                    )
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}