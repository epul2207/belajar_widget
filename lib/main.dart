import 'package:flutter/material.dart';

void main() {
  runApp(BelajarWidget());
}

class BelajarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Widget',
      home: LayarUtama(),
    );
  }
}

class LayarUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Mengenal Widget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'ElevatedButton',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Text('ElevetedButton'),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: Text(
                        """ElevatedButton merupakan bagian dari Material Design widget dari Flutter. 
      Pada kode di atas ElevatedButton memiliki 2 parameter yaitu onPressed dan child. 
      Parameter onPressed merupakan sebuah function event ketika tombol ditekan dan 
      sebenarnya ada event lain seperti onLongPress dan onHighlightChanged. 
      Parameter child diisi oleh widget pada umumnya"""),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Text Button',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Text Button'),
                    ),
                  ),
                  Container(
                    child: Text(
                        """TextButton merupakan widget button yang memiliki tampilan yang polos selayaknya Text. 
      TextButton umumnya digunakan pada toolbars, dialog, atau bersama komponen button lain"""),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Outline Button',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Outline Button'),
                    ),
                  ),
                  Container(
                    child: Text(
                        """OutlinedButton juga merupakan bagian dari material design yang menyediakan tampilan TextButton dengan tambahan outline. 
      OutlinedButton umumnya digunakan untuk tombol atau aksi yang penting, tetapi bukan aksi utama dalam aplikasi."""),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Icon Button',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    child: IconButton(
                      tooltip: "Increase volume by 10",
                      onPressed: () {},
                      icon: const Icon(Icons.volume_up),
                    ),
                  ),
                  Container(
                    child: Text(
                        """IconButton merupakan widget button dengan icon. Tak seperti widget tombol lainnya, 
widget IconButton ini tidak memiliki child.IconButton tidak menggunakan child untuk isi (content) melainkan menggunakan parameter icon dan tooltip (penunjuk) untuk memberikan hint pada tombol. """),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'DropDown Button',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Container(
                    child: Oke(),
                  ),
                  Container(
                    child: Text(
                        """DropdownButton merupakan tombol yang saat diklik, akan muncul pop-up daftar beberapa item yang dapat kita pilih salah satu.
Pada contoh tersebut DropdownButton tidak menggunakan child maupun children, akan tetapi menggunakan items di mana berisi list dari widget DropdownMenuItem. Pada widget DropdownMenuItem terdapat child untuk tiap itemnya dan value yang ada pada DropdownMenuItem adalah nilai dari tiap itemnya. Nantinya akan dibutuhkan parameter onChanged ketika ada perubahan atau ketika memilih salah satu dari item tersebut dan mengubah nilai language atau value dari DropdownButton tersebut. Sedangkan hint berfungsi ketika nilai value dari DropdownButton null atau kosong"""),
                  ),
                  Divider(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Oke extends StatefulWidget {
  const Oke({Key? key}) : super(key: key);

  @override
  State<Oke> createState() => _OkeState();
}

class _OkeState extends State<Oke> {
  String? bahasa;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            value: 'Dart',
            child: Text('Dart'),
          ),
          DropdownMenuItem<String>(
            value: 'Kotlin',
            child: Text('Kotlin'),
          ),
        ],
        value: bahasa,
        hint: Text('Pilih Bahasa'),
        onChanged: (String? value) {
          setState(() {
            bahasa = value;
          });
        },
      ),
    );
  }
}
