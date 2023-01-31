part of '../pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidenPassword = true;
  bool isAgree = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void changePasswordVisibility() {
    setState(() {
      hidenPassword = !hidenPassword;
    });
  }

  bool isFrofilCompleted() {
    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        isAgree) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFFC9C4E5)),
          child: Stack(
            children: <Widget>[
              Container(
                width: 460,
                height: 175,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/logooo.png'),
                      fit: BoxFit.fitWidth),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.16),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 24.0, right: 15, left: 16),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Image.asset(
                          "assets/image/piktur.png",
                          height: 80,
                          width: 104,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Center(
                              child: Text(
                                "Talent & Career Center",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "inter"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: Row(
                          children: const [
                            Center(
                              child: Text(
                                "Masuk",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff262626)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        child: Row(
                          children: const [
                            Text(
                              "Masuk Dengan Akun Yang Pernah Anda Daftarkan",
                              style: TextStyle(
                                fontFamily: "inter",
                                color: Color(0xff666666),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Email",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                fontFamily: "inter",
                                color: Color(0xff333333)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 40,
                        width: 400,
                        child: TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          onSubmitted: (value) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Email Kamu Adalah $value')));
                          },
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: const BorderSide(
                                    color: Color(0xff333333),
                                  )),
                              hintText: "Lorem@gmail.com"),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Password",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xff333333)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 40,
                        width: 400,
                        child: TextField(
                          obscureText: hidenPassword,
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          onSubmitted: (value) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Pasword Kamu Adalah $value')));
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  changePasswordVisibility();
                                },
                                child: Icon((hidenPassword)
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                  color: Color(0xff333333),
                                )),
                            hintText: '*****',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 44,
                        width: 400,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(12.14),
                            backgroundColor: const Color(0xffEA232A),
                            elevation: 3,
                          ),
                          onPressed: () {},
                          child: const Text('Masuk'),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Center(
                              child: Text(
                                "Belum Pernah  Mendaftar ?",
                                style: TextStyle(
                                    color: Color(0xff333333),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              child: GestureDetector(
                                onTap: () => context.go("/register"),
                                child: const Text(
                                  "Daftar Sekarang",
                                  style: TextStyle(
                                      color: Color(0xffEA232A),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Center(
                                child: Text(
                              "Lupa Password?",
                              style: TextStyle(
                                  color: Color(0xffEA232A),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            )),
                          ],
                        ),
                      )
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