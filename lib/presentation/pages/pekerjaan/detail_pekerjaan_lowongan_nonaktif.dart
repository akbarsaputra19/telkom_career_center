part of '../pages.dart';

class Nonaktif extends StatefulWidget {
  const Nonaktif({super.key});

  @override
  State<Nonaktif> createState() => _NonaktifState();
}

class _NonaktifState extends State<Nonaktif> {
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
            color: Colors.grey[100],
            margin: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Center(
                  child: Image.asset("assets/images/image_888.png"),
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
                    "26 Jan 2023 | 12 Pelamar",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    )
                    )
                ),
                Container(
                  child: TextButton(
                    onPressed: () => context.go('/detail'), 
                    child: const Text(
                      "Lihat Pelamar",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffEA232A)
                    )
                    )
                    )
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 25),
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
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Html(data: htmlKualifikasi)
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Deskripsi Pekerjaan",
                    style: TextStyle(
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    )
                    )
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Html(data: htmlDeskripsi),
                ),
                const Divider(
                  height: 16,
                  thickness: 2,
                  indent: 16,
                  endIndent: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.topLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "assets/images/image_888.png",
                        fit: BoxFit.cover),
                      ),
                      Container(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                      Text(
                        "Accenture Southeast Asia",
                      style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333)
                    )
                    ),
                    Text(
                      "Teknologi & Layanan Informasi",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333333)
                              )
                            )
                          ]
                        ),
                      )
                    ]
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 15),
                  alignment: Alignment.topLeft,
                  child: Html(data: htmlData),
                ),
              ]
            )
          )
        )
      )
    );
  }
}