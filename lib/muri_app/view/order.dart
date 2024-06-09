import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late Color color1 = Colors.blue;
  late Color color2 = Colors.grey;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      color1 = _tabController.index == 0 ? Colors.blue : Colors.grey;
      color2 = _tabController.index == 1 ? Colors.blue : Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Material(
            elevation: 5.0,
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Row(children: [
                    Container(
                      width: 25,
                      decoration: BoxDecoration(
                        color: color1,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Nominal Saldo',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ]),
                ),
                Tab(
                  child: Row(children: [
                    Container(
                      width: 25,
                      decoration: BoxDecoration(
                        color: color2,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Virtual Code',
                      style: TextStyle(color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
        title: const Text(
          'Form isi saldo',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Form isi saldo',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nominal Saldo',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.blue), // Set the color
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   'No handphone',
                        //   style: TextStyle(
                        //       fontSize: 14, fontWeight: FontWeight.w500),
                        // ),
                        // SizedBox(height: 10),
                        // Container(
                        //   height: 50,
                        //   child: TextField(
                        //     keyboardType: TextInputType.number,
                        //     decoration: InputDecoration(
                        //       contentPadding: EdgeInsets.symmetric(
                        //           vertical: 15.0, horizontal: 10),
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(10),
                        //       ),
                        //       focusedBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(10),
                        //         borderSide: BorderSide(
                        //             color: Colors.blue), // Set the color
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    // SizedBox(height: 15),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text(
                    //       'Alamat Pengiriman',
                    //       style: TextStyle(
                    //           fontSize: 14, fontWeight: FontWeight.w500),
                    //     ),
                    //     SizedBox(height: 10),
                    //     Container(
                    //       child: TextField(
                    //         maxLines: 2,
                    //         decoration: InputDecoration(
                    //           contentPadding: EdgeInsets.symmetric(
                    //               vertical: 15.0, horizontal: 10),
                    //           border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(10),
                    //           ),
                    //           focusedBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(10),
                    //             borderSide: BorderSide(
                    //                 color: Colors.orange), // Set the color
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        _tabController.animateTo(1);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(
                            0xFF1594D7), // This is the background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // This is the border radius
                        ),
                      ),
                      child: const Text(
                        'Selanjutnya',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Barcode',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: BarcodeWidget(
                        barcode: Barcode
                            .code128(), // Choose the type of barcode you want to generate
                        data:
                            '1234567890', // Replace with the data you want to encode
                        width: 200,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'No Virtual Account',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '7895328',
                            style: TextStyle(
                                letterSpacing: 5,
                                fontSize: 36,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1594D7)),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.copy,
                              color: Color(0xFF1594D7),
                            ),
                            onPressed: () {
                              // Copy to clipboard
                              Clipboard.setData(ClipboardData(text: '7895328'));
                              // Show snackbar
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Kode disalin'),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20.0, left: 10, right: 10),
                      child: Row(
                        children: [
                          Text(
                            'Cara Pembayaran',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: UnorderedList([
                        'Login ke akun m-banking anda',
                        'klik menu "m-transfer"',
                        'Klik kolom menu "No Virtual Account" dan masukan No Virtul Account yang tercantum di menu "From isi saldo"',
                        'Cek nomor rekining yang anda masukan atas nama "BUDI (POWER PILOT PAY)"',
                        'Masukan jumlah saldo yang anda akan isi ulang lalu klik "OK"',
                        'Masukan pin m-banking anda lalu klil "OK"',
                        'Pembayaran selesai, simpan bukti pembayaran'
                      ]),
                    ),
                  ],
                ),
                // Center(
                //   child: SizedBox(
                //     width: 300,
                //     height: 40,
                //     child: ElevatedButton(
                //       onPressed: () {},
                //       style: ElevatedButton.styleFrom(
                //         foregroundColor: Colors.white,
                //         backgroundColor: const Color(
                //             0xFF1594D7), // This is the background color
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(
                //               10), // This is the border radius
                //         ),
                //       ),
                //       child: const Text(
                //         'Konfirmasi',
                //         style: TextStyle(
                //             fontSize: 22, fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UnorderedList extends StatelessWidget {
  UnorderedList(this.texts);
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(SizedBox(height: 1.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("• "),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}
