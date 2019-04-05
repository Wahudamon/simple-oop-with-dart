/// Support for doing something awesome.
///
/// More dartdocs go here.
library simple_oop_with_dart;

export 'src/simple_oop_with_dart_base.dart';

//Aplikasi sederhana untuk menampilkan data dari Siswa yang bersekolah di Sky High, Sekolah untuk melatih para superhero

void main() {
  // membuat objek siswa baru
  var ana = new Student("Ana", "Yogyakarta", "26 Februari 1999", "Terbang");
  var bruce =
      new Student("Bruce", "Bengkulu", "1 Maret 1999", "Mengeluarkan Kentut");
  var ryan =
      new Student("Ryan", "Kalimantan", "4 April 1999", "Mengendalikan Api");
  var lucas = new Student("Lucas", "Lampung", "21 Juni 1999", "Menjadi Batu");

  // memanggil properties atau method yang ada didalam objek
  // ana.studentPower();
  // bruce.studentPower();
  // ryan.studentPower();
  // lucas.studentPower();

  //Membuat wadah untuk menampung list para siswa Sky High
  List<Student> student = new List<Student>();

  //Membuat dan Menambahkan data para siswa Sky High ke dalam list, cara ke 1
  // student.add(
  //     new Student("Ana", "Yogyakarta", "26 Februari 1999", "Terbang"));
  // student.add(
  //     new Student("Bruce", "Bengkulu", "1 Maret 1999", "Mengeluarkan Kentut"));
  // student.add(
  //     new Student("Ryan", "Kalimantan", "4 April 1999", "Mengendalikan Api"));
  // student.add(
  //     new Student("Lucas", "Lampung", "21 Juni 1999", "Menjadi Batu"));

//Membuat dan Menambahkan data para siswa Sky High ke dalam list, cara ke 2
  student.add(ana);
  student.add(bruce);
  student.add(ryan);
  student.add(lucas);

  //membuat map untuk mengkonvert dari tipe list menjadi string supaya properties nya dapat diambil
  var mappedStudent = student.map((n) =>
      'Nama = ${n.nama}, Alamat = ${n.alamat}, TTL = ${n.tglLahir},  Kekuatan = ${n.kekuatan}');

  //Menampilkan setiap data para siswa Sky High
  mappedStudent.forEach((n) => print(n));
}

//Deklarasi class Siswa
class Student {
  //Deklarasi properties para siswa
  String nama;
  String alamat;
  String tglLahir;
  String kekuatan;

  //Membuat Konstruktor yang akan menampung properties yang bakal dijadikan parameter
  Student(this.nama, this.alamat, this.tglLahir, this.kekuatan);

  //Deklarasi method untuk menunjukkan nama dan kekuatan
  studentPower() {
    print("${nama} bisa ${kekuatan}");
  }
}
