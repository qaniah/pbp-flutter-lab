### Qaniah Zahirah 2106639491
# Tugas 9
### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Namun, tidak lebih baik karena penempatan JSON dapat tidak sesuai dengan yang diinginkan. Hal ini karena tidak adanya struktur dari class yang jelas. 

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text: Menampilkan suatu string dan style-nya.
- Center: Menampilkan suatu child widget agar letaknya di tengah.
- Column: Menampilkan child widget ini sesuai arah vertikal.
- Row: Menampilkan child widget ini secara horizontal.
- Padding: Memberikan padding disekitar child yang diletakkan di dalamnya.
- EdgeInsets: Memberikan Offset pada 4 arah kardinal yang bersifat immutable.
- Container: Menggabungkan widget umum untuk painting, positioning, dan sizing.
- Drawer: Untuk berpindah halaman.

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
- Membuat model untuk data yang akan ditampilkan
- Menambahkan package HTTP tambahan
- Menambahkan kode pada android/app/src/main/AndroidManifest.xml untuk memperbolehkan untuk mengakses internet.
- Membuat Future<List> yang akan dihubungkan kedalam future builder.
- Melakukan passing pada list tersebut dan melakukan listview.builder agar setiap widget dapat di render.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Menambah kode di drawer.dart agar dapat menampilkan My Watchlist.
- Menggunakan data JSON tugas 3 lalu mengconvertnya menjadi kode dart lalu menaruhnya di watchlistModel.dart.
- Menginstall dependensi http.
- Menangkap JSON pada mywatchlist.dart dengan membuat fungsi fetch lalu fetching dengan link JSON heroku tugas 3.
- Melakukan wrap dari setiap object untuk merouting ke halaman detail watchlist.
- Membuat halaman detail pada detailMywatchlist.dart agar dapat menampilkan detail film yang diclick.

# Tugas 8

### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push akan menambahkan rute lain ke tumpukan screen (stack) yang sekarang. Sedangkan Navigator.pushReplacement akan menambahkan rute lain ke tumpukan screen yang (stack) sekarang juga menghilangkan rute yang sebelumnya/ mengganti dengan halaman yang baru.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text: Menampilkan suatu string dan style-nya.
- Center: Menampilkan suatu child widget agar letaknya di tengah.
- Column: Menampilkan child widget ini sesuai arah vertikal.
- Row: Menampilkan child widget ini secara horizontal.
- Padding: Memberikan padding disekitar child yang diletakkan di dalamnya.
- Card: Menampilkan masing-masing informasi dari form.
- Form: Containter untuk melakukan grouping terhadap beberapa form field widget.
- TextFormField: Field text untuk input.
- TextButton: Tombol yang berisi text.
- Container: Menggabungkan widget umum untuk painting, positioning, dan sizing.
- SingleChildScrollView: Agar child-nya dapat di-scroll.
- CustomScrollView: Agar child-nya dapat di-scroll namun lebih fleksibel daripada SingleChildScrollView.
- SliverFillRemainingFill: Mengisi sisa ruang pada viewport.
- DropdownButtonFormField: Menampilkan menu dropdown.
- InputDecoration : Melakukan dekorasi pada input.

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed: Fungsi yang diterapkan event ini akan dijalankan ketika widget selesai ditekan oleh user.
- onSaved: Fungsi yang diterapkan event ini akan dijalankan ketika user menyimpan form.
- onChanged: Fungsi yang diterapkan event ini akan terjadi ketika ada perubahan.

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Cara kerja Navigator dalam mengganti halaman adalah dengan menggunakan prinsip stack. Halaman yang berada pada top of stack adalah halaman yang akan ditampilkan

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan drawer menu di file drawer.dart pada folder lib. Isi dari file tersebut ialah widget Drawer dengan routing ke halaman app-app yaitu counter_7/main, formBudget, dan budget.
2. Membuat form beserta input field yang diminta oleh soal pada file formBudget.dart.
3. Menyimpan data-data input ke sebuah List lalu menyimpan data berupa Card.
4. Menampilkan data yang sudah ditambahkan ke halaman Data Budget dengan memanfaatkan list.


# Tugas 7

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget merupakan widget yang tidak memiliki objek State. Keadaannya tidak berubah ketika diberikan interaksi oleh user. Sedangkan stateful widget memiliki objek State yang memiliki fields yang berpengaruh pada tampilannya sehingga keadaannya dapat berubah ketika pengguna berinteraksi dengannya. Stateful widget ini bersifat dinamis.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Icon: Menampilkan suatu icon.
- Text: Menampilkan suatu string dan style-nya.
- Center: Menampilkan suatu child widget agar letaknya di tengah.
- Column: Menampilkan child widget ini sesuai arah vertikal.
- Row: Menampilkan child widget ini secara horizontal.
- Padding: Memberikan padding disekitar child yang diletakkan di dalamnya.
- FloatingActionButton: Menampilkan tombol yang dapat melakukan suatu aksi.
- Visibility: Menampilkan dan menghilangkan widget sesuai dengan kondisi yang diberikan.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() berfungsi untuk memberi tahu framework Flutter bahwa ada sesuatu yang berubah, akibatnya method build di run kembali sehingga perubahan yang terjadi ditampilkan. Variabel yang terdampak adalah variabel _counter. Namun, karena variabel _counter digunakan untuk conditional, teks yang ditampilkan juga terdampak.

### Jelaskan perbedaan antara const dengan final.
const menyebabkan variabel konstan ketika program dikompilasi saja. Sedangkan variabel final tidak dapat diubah nilainya setelah pertama kali di-assign. Nilai dari variabel const dan final sama-sama tidak dapat berubah setelah diinisiasi.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menjalankan flutter create counter_7 pada terminal
2. Mengganti title menjadi program counter
3. Menambahkan code berikut untuk decrement pada file main.dart di folder lib
```dart
void _decrementCounter(){
    setState(() {
    if(_counter < 1){
        return;
    }
    
    _counter--;
    });
}
```
4. Menambahkan code berikut untuk mengecek apakah angka genap atau ganjil beserta warna dari textnya
```dart
children: _counter % 2 == 0
            ? <Widget>[
            const Text('GENAP',
                style: TextStyle(color: Colors.red),
            ),
            Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
            ),
            ]
            : <Widget>[
            const Text('GANJIL', 
                    style: TextStyle(color: Colors.blue),
            ),
            Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
            ),
            ],
```
5. Menambahkan code berikut untuk menampilkan tombol decrement dan increment serta memberikan keterangan visibility pada tombol decrement ketika angkanya lebih kecil dari 1
```dart
floatingActionButton:  Padding(
    padding: EdgeInsets.only(left: 33),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
        Visibility(
        visible: _counter >= 1,
        child: FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
        ),
        ),

        FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        ),
        
    ],
    )
```