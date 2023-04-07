import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan03/pages/main_page.dart';

class TampilanSatu extends StatelessWidget {
  const TampilanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(
      String img,
      String name,
      String role,
    ) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xffFFFFFF)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 24,
          ),
          Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(img)))),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        role,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff000000),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/ic-star.png",
                                ))),
                      ),
                      Text(
                        "4.9",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000),
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ]),
          ),
        ]),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()),
                            );
                          },
                          child: Text(
                            'Hello, \nFajri Awwaluddin',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Stay Healty with Out Spesialist Doctor',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color.fromARGB(200, 0, 0, 0),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                    Container(
                      width: 75,
                      height: 75,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img-profile.png",
                              ))),
                    ),
                  ],
                ),
                doctorCard(
                    "assets/img-doc1.png", "Dr. Richard", "Skin Spesialist"),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " Pasca menuntaskan pendidikannya dari Fakultas Kedokteran, Universitas Sriwijaya, Richard Lee mengawali kariernya di bidang Kesehatan dengan menjadi dokter di salah satu perusahaan milik Sinarmas Group Palembang. Dari sanalah, kehidupannya perlahan berubah.\n Berkat kerja kerasnya itu pula, Richard Lee dipercaya menjadi Direktur Utama di salah satu anak perusahaan Sinarmas Group bagian kesehatan. Nasib baik kian menghampiri hidup Richard setelah ia berjumpa dengan wanita bernama Renie Effendi di tempat kerjanya yang kini menjadi istrinya. Renie diketahui juga berprofesi sebagai seorang dokter.\n Bersama istrinya, Renie Effendi, Richard Lee memutuskan untuk membangun usaha klinik kecantikan yang diberi nama Klinik Athena di Palembang. Klinik ini diketahui merupakan salah satu klinik kecantikan terbesar di pulau Sumatera hingga mempunyai 10 cabang yang tersebar di seluruh Indonesia.\n Beberapa cabang klinik milik Richard Lee tersebut antara lain berada di Aceh, Bandung, Bekasi, Bogor, Lampung, Makassar, Medan, Palembang, Semarang, dan Surabaya.\n Kini, klinik tersebut sudah menjadi favorit banyak orang termasuk dari kalangan artis dan sosialita. Beberapa public figure yang pernah mempercayakan perawatan kecantikan ke Klinik Athena seperti Kekeyi, Dinar Candy, Merry Riana dan masih banyak lagi.",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff000000),
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
