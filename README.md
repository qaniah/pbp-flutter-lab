# Tugas 7 Qaniah Zahirah

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