part of '../pages.dart';

class LamaranTerkirim extends StatefulWidget {
  const LamaranTerkirim({super.key});

  @override
  State<LamaranTerkirim> createState() => _LamaranTerkirimState();
}

class _LamaranTerkirimState extends State<LamaranTerkirim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lamaran Terkirim",
          style: TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xff333333)
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0.05,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 40, bottom: 16),
                child: Image.asset(
                  "assets/images/illus-apply-success.png",
                  width: 210,
                  height: 200,
                  fit: BoxFit.cover
                )
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 16, right: 16),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Lamaran anda berhasil dikirim',
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333)
                      ),
                      textAlign: TextAlign.center
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Perusahaan akan mengabari proses perekrutan",
                      style: TextStyle(
                        fontFamily: "Regular",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333)
                      ),
                      textAlign: TextAlign.center
                    )
                  ]
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                child: InkWell(
                  onTap: () => context.go('/jobscreen'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Kembali ke Lowongan Kerja",
                        style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffEA232A)
                        )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}