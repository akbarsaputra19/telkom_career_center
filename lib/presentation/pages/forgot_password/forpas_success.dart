part of '../pages.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
   return Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        color: Color(0xffC9C4E5)),
      child: Stack(
          children: <Widget>[
            Container(
            width: 450,
            height: 190,
              decoration: const BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/illus_login.png'),
          fit: BoxFit.fitWidth
              ))),
            Container(
              margin: const EdgeInsets.only(top: 135),
              height: height * 0.90,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: GestureDetector(
                    onTap: () => context.go('login'),
                  child: Row(
                    children: const [
                       Icon(
                        Icons.chevron_left_rounded,
                        color: Color(0xffEA232A),
                      ),
                      Text(
                        "Kembali ke Halaman Masuk",
                        style: TextStyle(
                            fontFamily: "inter_semibold",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffEA232A)),
                      )
                    ]
                  )
                  )
                  ),
                  SizedBox(height: height * 0.07),
                  Center(
                    child: Image.asset("assets/images/illus_u_password.png")),
                  SizedBox(height: height * 0.05),
                  const Center(
                    child: Text(
                      "Password Berhasil Diperbarui",
                      style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: const Text(
                        "Password anda berhasil diperbarui. Silahkan kembali ke halaman Masuk dengan tombol dibawah",
                        style: TextStyle(
                            fontFamily: "inter_regular",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                Container(
                  height: 50,
                  width: 350,
                  margin: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffEA232A))
                    ),
                    onPressed: () => context.go('/login'),
                    child: const Text("Masuk",
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.white
                    )),
                  ),
                )
                ],
              ),
            ),
          ],
        ),
    )
      );
}
}