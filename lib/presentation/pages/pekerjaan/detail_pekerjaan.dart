part of '../pages.dart';

class DetailPekerjaan extends StatefulWidget {
  const DetailPekerjaan({super.key});

  @override
  State<DetailPekerjaan> createState() => _DetailPekerjaanState();
}

class _DetailPekerjaanState extends State<DetailPekerjaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detail Pekerjaan"),
        titleTextStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xff333333)
        ),
        backgroundColor: const Color(0xffFFFFFF),
        leading: const Icon(Icons.arrow_back_ios_rounded, color: Color(0xff333333)
        ),
        elevation: 0.05,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Center(
                  child: Image.asset("assets/images/accenture.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Accounting Officer",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333)
                    )
                    )
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text(
                          "Accenture Southeast Asia",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          )
                          )
                      )
                    ],
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Kebon Jeruk, Jakarta Barat",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333)
                    )
                    )
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "24 Jan 2023",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    )
                    )
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Kualifikasi",
                    style: TextStyle(
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    )
                    )
                )
              ]
            ),
          ),
        )
        )
      );
  }
}