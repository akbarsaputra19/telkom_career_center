// ignore_for_file: unused_field, unused_local_variable, avoid_print, avoid_unnecessary_containers, unnecessary_string_interpolations

part of '../pages.dart';

class DetailPekerjaan extends StatefulWidget {
  const DetailPekerjaan({super.key});

  @override
  State<DetailPekerjaan> createState() => _DetailPekerjaanState();
}

class _DetailPekerjaanState extends State<DetailPekerjaan> {
  late JobsDetailCubit _jobsDetailCubit;
  late CompanyDataCubit _companyDataCubit;

  @override
  void initState() {
    _jobsDetailCubit = JobsDetailCubit(JobsDetailRepositoryImpl());
    _companyDataCubit = CompanyDataCubit(CompanyDataRepositoryImpl());
    super.initState();
  }

  @override
  void dispose() {
    _jobsDetailCubit.close();
    _companyDataCubit.close();
    super.dispose();
  }

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
                color: Color(0xff333333)),
            backgroundColor: const Color(0xffFFFFFF),
            leading: IconButton(
              onPressed: () => context.go('/jobscreen'),
              icon: const Icon(Icons.arrow_back_ios_rounded,
                  color: Color(0xff333333)),
            ),
              elevation: 0.05
            ),
            backgroundColor: Colors.grey[100],
            body: SingleChildScrollView(
              child: Column(
                children: [
                  buildDetailJobWidget(),
                  buildDetailCompanyWidget(),
                ],
              ),
            )
          );
        }
      }

  Widget buildDetailJobWidget() {
    return BlocBuilder<JobsDetailCubit, JobsDetailState>(
      builder: (context, state) {
        if (state is JobsDetailIsSuccess) {
          return Column(
            children: [
              Center(
                child: Image.network(state.data!.urlLogo),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  state.data!.position,
                  style: const TextStyle(
                    fontFamily: 'inter_semibold',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff333333)
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.data!.company,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  state.data!.address,
                  style: const TextStyle(
                    fontFamily: 'inter_semibold',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff333333)
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  state.data!.createdAt,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400
                  )
                ),
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
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Html(data: state.data!.qualification)
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
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Html(data: state.data!.jobDescription)
              ),
              const Divider(
                height: 16,
                thickness: 2,
                indent: 16,
                endIndent: 15,
              )
            ],
          );
        } else if (state is JobsDetailIsLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Color(0xff5A5A5A),
              backgroundColor: Color.fromARGB(1, 90, 90, 90),
            ),
          );
        }
        return 0.heightBox;
      }
    );
  }

  Widget buildDetailCompanyWidget() {
    return BlocBuilder<CompanyDataCubit, CompanyDataState>(
      builder: (context, companyState) {
        if (companyState is CompanyDataIsSucces) {
          final aboutCompany = companyState.data.about;
          return Column(
            children: [
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
                      child: Image.network(
                        "${companyState.data.urlLogo}",
                        fit: BoxFit.cover
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${companyState.data.name}",
                          style: const TextStyle(
                            fontFamily: 'inter_semibold',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff333333)
                          ),
                        ),
                        Text(
                          "${companyState.data.typeCompany}",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333)
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 15),
                alignment: Alignment.topLeft,
                child: Html(data: "${aboutCompany!.profile}"),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 15, 21),
                child: ElevatedButton(
                  onPressed: () => context.go('/applicationsent'),
                  // () {
                  //   BlocProvider.of<SendApplicationCubit>(context).submitSendApplication(
                  //     SendApplicationRequest(
                  //       jobsId,
                  //       companyId,
                  //     )
                  //   );
                  // },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffEA232A),
                    padding: const EdgeInsets.fromLTRB(118.5, 12, 118.5, 12)
                  ),
                  child: const Text(
                    "Lamar Sekarang",
                    style: TextStyle(
                      fontFamily: "inter_bold",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)
                    )
                  )
                ),
              )
            ],
          );
        } else if (companyState is CompanyDataIsLoading) {
          return const Center(
            child: CircularProgressIndicator(
            color: Color(0xff5A5A5A),
            backgroundColor: Color.fromARGB(1, 90, 90, 90),
            ),
          );
        }
        return Container();
      }
    );
  }
//           body: SafeArea(
//             child: SingleChildScrollView(
//           child: Container(
//             color: Colors.grey[100],
//             margin: const EdgeInsets.only(top: 16),
//             child: Column(
//               children: [
//                 BlocBuilder<JobsDetailCubit, JobsDetailState>(
//                     builder: (context, state) {
//                   if (state is JobsDetailIsSuccess) {
//                     return Column(
//                       children: [
//                       Center(
//                         child: Image.network(state.data!.logo)
//                       ),
//                       Text(
//                         state.data!.logo,
//                         style: const TextStyle(
//                           fontSize: 14.0,
//                         ),
//                       ),
//                       Container(
//                           margin: const EdgeInsets.only(top: 8),
//                           child: Text(state.data!.position,
//                               style: const TextStyle(
//                                   fontFamily: 'inter_semibold',
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600,
//                                   color: Color(0xff333333)))),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(state.data!.company,
//                               style: const TextStyle(
//                                   fontSize: 12, fontWeight: FontWeight.w400))
//                         ],
//                       ),
//                       Container(
//                           margin: const EdgeInsets.only(top: 8),
//                           child: Text(state.data!.address,
//                               style: const TextStyle(
//                                   fontFamily: 'inter_semibold',
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w600,
//                                   color: Color(0xff333333)))),
//                       Container(
//                           margin: const EdgeInsets.only(top: 8),
//                           child: Text(state.data!.createdAt,
//                               style: const TextStyle(
//                                 fontSize: 10,
//                                 fontWeight: FontWeight.w400,
//                               ))),
//                       Container(
//                           margin: const EdgeInsets.only(left: 16, top: 16),
//                           alignment: Alignment.topLeft,
//                           child: const Text("Kualifikasi",
//                               style: TextStyle(
//                                 fontFamily: "inter_semibold",
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xff333333),
//                               ))),
//                       Container(
//                           alignment: Alignment.topLeft,
//                           child: Html(data: state.data!.qualification)),
//                       Container(
//                           margin: const EdgeInsets.only(left: 16, top: 16),
//                           alignment: Alignment.topLeft,
//                           child: const Text("Deskripsi Pekerjaan",
//                               style: TextStyle(
//                                 fontFamily: "inter_semibold",
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xff333333),
//                               ))),
//                       Container(
//                           alignment: Alignment.topLeft,
//                           child: Html(data: state.data!.jobDescription)),
//                       const Divider(
//                         height: 16,
//                         thickness: 2,
//                         indent: 16,
//                         endIndent: 15,
//                       ),
//                     ]
//                     );
//                   } else if (state is JobsDetailIsLoading) {
//                     return const Center(
//                       child: CircularProgressIndicator(
//                         color: Color(0xff5A5A5A),
//                         backgroundColor: Color.fromARGB(1, 90, 90, 90),
//                       ),
//                     );
//                   }
//                   return 0.heightBox;
//                   }
//                 ),
//                 BlocBuilder<CompanyDataCubit, CompanyDataState>(
//                   builder: (context, companyState) {
//                     if (companyState is CompanyDataIsSucces) {
//                       final aboutCompany = companyState.data.about;
//                           return Column(
//                             children: [
//                               Container(
//                                 margin: const EdgeInsets.only(left: 16, top: 16),
//                                 alignment: Alignment.topLeft,
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       margin: const EdgeInsets.only(right: 8),
//                                       width: 40,
//                                       height: 40,
//                                       child: Image.network(
//                                         "${companyState.data.logo}",
//                                           fit: BoxFit.cover
//                                       ),
//                                     ),
//                                     Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             "${companyState.data.name}",
//                                               style: const TextStyle(
//                                                   fontFamily: 'inter_semibold',
//                                                   fontSize: 14,
//                                                   fontWeight: FontWeight.w600,
//                                                   color: Color(0xff333333))),
//                                           Text(
//                                             "${companyState.data.typeCompany}",
//                                               style: const TextStyle(
//                                                   fontSize: 12,
//                                                   fontWeight: FontWeight.w400,
//                                                   color: Color(0xff333333)))
//                                         ])
//                                   ])),
//                           Container(
//                               margin: const EdgeInsets.only(left: 16, right: 15),
//                               alignment: Alignment.topLeft,
//                               child: Html(data: "${aboutCompany!.profile}")),
//                           Container(
//                               margin: const EdgeInsets.fromLTRB(16, 8, 15, 21),
//                               child: ElevatedButton(
//                                   onPressed: () => context.go('/sudah'),
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: const Color(0xffEA232A),
//                                     padding: const EdgeInsets.fromLTRB(
//                                         118.5, 12, 118.5, 12),
//                                   ),
//                                   child: const Text(
//                                     "Lamar Sekarang",
//                                     style: TextStyle(
//                                       fontFamily: "inter_bold",
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w700,
//                                       color: Color(0xffFFFFFF),
//                                     ),
//                                   )
//                                 )
//                               )
//                             ]
//                           );
//                         } else if (companyState is CompanyDataIsLoading) {
//                           return const Center(
//                             child: CircularProgressIndicator(
//                               color: Color(0xff5A5A5A),
//                               backgroundColor: Color.fromARGB(1, 90, 90, 90),
//                             ),
//                           );
//                         }
//                     return Container();
//                   }
//                 )
//               ]
//             )
//           )
//             )
//         )
//      );
//    } 
// }