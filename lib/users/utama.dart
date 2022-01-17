import 'package:flutter/material.dart';
import 'package:penjualan_application/models/produk.dart';
import 'package:penjualan_application/models/produk_item.dart';

class Utama extends StatefulWidget {
  @override
  _UtamaState createState() => _UtamaState();
}

class _UtamaState extends State<Utama> {
  List<Container> daftarMenu = [];

  var menu = [
    {"nama": "kue bamkuen", "gambar": "bamkuhen.jpg"},
    {"nama": "roti tawar choco chip", "gambar": "choco-chip.jpg"},
    {"nama": "cheese cake", "gambar": "ciskek.jpg"},
    {"nama": "kue dorayaki", "gambar": "dorayaki.jpg"},
    {"nama": "roti tawar doublesoft", "gambar": "doublesoft.jpg"},
    {"nama": "roti tawar pandan", "gambar": "pandan.jpg"},
    {"nama": "roti tawar gandum", "gambar": "rotigandum.jpg"},
    {"nama": "kue sobek coklat", "gambar": "rotisobekcoklat.jpg"},
    {"nama": "roti tawar original", "gambar": "rotitawaror.jpg"},
    {"nama": "sandwich coklat", "gambar": "sandwidcoklat.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < menu.length; i++) {
      final menunya = menu[i];
      final String? gambar = menunya["gambar"];

      var text = Text(
        menunya['nama']!,
        style: TextStyle(fontSize: 10.0),
      );
      daftarMenu.add(Container(
          padding: EdgeInsets.all(10.0),
          child: Card(
              child: Column(
            children: <Widget>[
              Hero(
                tag: menunya['nama'] ?? 0,
                child: Material(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Detail(
                        nama: menunya['nama']!,
                        gambar: gambar!,
                      ),
                    )),
                    child: Image.asset(
                      "assets/$gambar",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              text
            ],
          ))));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 1,
        children: daftarMenu,
      ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({required this.nama, required this.gambar});
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              height: 320.0,
              child: Hero(
                tag: nama,
                child: Material(
                  child: InkWell(
                    child: Image.asset(
                      "assets/$gambar",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )),
          BagianNama(
            nama: nama,
          ),
          BagianIcon(),
          Keterangan(),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({required this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nama,
                  style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                Text(
                  "www.sariroti.com",
                  style: TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              Text(
                "12",
                style: TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.0),
      child: Row(
        children: <Widget>[
          Iconteks(
            icon: Icons.shopping_cart,
            teks: "beli",
          ),
          Iconteks(
            icon: Icons.favorite_border,
            teks: "favorite",
          ),
          Iconteks(
            icon: Icons.photo,
            teks: "Photo",
          ),
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({required this.icon, required this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 50.0,
            color: Colors.blue,
          ),
          Text(
            teks,
            style: TextStyle(fontSize: 18.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Kami senantiasa tumbuh dan mempertahankan posisi sebagai perusahaan roti terbesar di Indonesia melalui penetrasi pasar yang lebih luas dan dalam dengan menggunakan jaringan distribusi yang luas untuk menjangkau seluruh konsumen. Kami memproduksi dan mendistribusikan beragam produk yang halal, berkualitas tinggi, higienis dan terjangkau bagi seluruh konsumen.",
            style: TextStyle(fontSize: 18.0),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}
