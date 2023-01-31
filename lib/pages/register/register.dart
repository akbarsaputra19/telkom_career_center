part of '../pages.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hidePassword = true;
  bool isAgree = false;

  void changePasswordVisibility() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffC9C4E5)),
      child: Stack(
        children: <Widget>[
            Container(
            width: 450,
            height: 190,
              decoration: const BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/img/LogoOrang.png'),
          fit: BoxFit.fitWidth))),
            Container(
              margin: const EdgeInsets.only(top: 135),
              height: height * 0.90,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                      )
          ),
          child: ListView(
            children: <Widget> [
              Center(
                child: Image.asset('assets/img/LogoTelkom.png',
                fit: BoxFit.fill
                )
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: const Center(
                  child: Text(
                    "Talent & Career Center",
                    style: TextStyle(
                            fontFamily: "inter_semibold",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff262626))
                            )
                )
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff262626))
                    )
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                    child: const Text(
                      "Daftarkan akun untuk menggunakan aplikasi ini.",
                      style: TextStyle(
                          fontFamily: "inter_regular",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff666666)),
                      textAlign: TextAlign.left,
                    )
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: const Text(
                      "Email",
                      style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333))
                    )
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff333333),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xff999999),
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    )
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: const Text(
                      "Nama",
                      style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333)),
                    )
              ),
               Container(
                  margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff333333),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xff999999),
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.name,
                  )
              ),
              Container(
                    margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: const Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333))
                  )
              ),
              Container(
                    margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      obscureText: hidePassword,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff333333),
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            changePasswordVisibility();
                          },
                          child: Icon(
                            (hidePassword)
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xff666666),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xff999999),
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: ElevatedButton(
                      onPressed: () => context.go('/login'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEA232A),
                        padding: const EdgeInsets.fromLTRB(12, 24, 12, 24)
                      ),
                      child: const Text(
                        "Daftar",
                        style: TextStyle(
                          fontFamily: "inter_bold",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF)
                        )
                      )
                    )
                ),
               Container(
                    margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Sudah memiliki akun?",
                            style: TextStyle(
                              fontFamily: "inter_regular",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                    Container(
                          margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: GestureDetector(
                            onTap: () => context.go('/login'),
                            child: const Text(
                              "Masuk Sekarang",
                              style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffEA232A)
                              )
                            )
                          )
                        )
                      ]
                    )
               ) 
            ],
          ),
      )])
      )
      );
  }
}