class JurusanTik {
  String name;
  String description;
  String imageAsset;
  List<String> imageUrls;

  JurusanTik({
    required this.name,
    required this.description,
    required this.imageAsset,
    required this.imageUrls,
});
}

var jurusanTikList = [
  JurusanTik(
    name: 'Pemrograman',
    description: 'Pemrograman atau programming adalah sub dari kejuruan TIK yang bertujuan membangun sebuah program komputer yang dapat dieksekusi komputer untuk tugas tertentu. Pemrograman ini ditujukan untuk beberapa platform yaitu desktop, web dan mobile',
    imageAsset: 'assets/images/programming.png',
    imageUrls: [
      'assets/images/programming1.png',
      'assets/images/programming2.png',
      'assets/images/programming3.png'
    ],
  ),

  JurusanTik(
    name: 'Desain Grafis',
    description: 'Desain Grafis adalah salah satu bentuk seni lukis untuk menciptakan atau mengatur elemen rupa seperti ilustrasi, foto, tulisan, dan garis diatas suatu media. Disini akan dipelajari menggunakan software aplikasi Corel Draw, Adobe Photoshop, Adobe Illustrator',
    imageAsset: 'assets/images/design.png',
    imageUrls: [
      'assets/images/design1.png',
      'assets/images/design2.png',
      'assets/images/design3.png'
    ],
  ),

  JurusanTik(
    name: 'animasi',
    description: 'Animasi adalah suatu gambar bergerak disusun secara khusus sehingga bergerak sesuai alurnya dan sudah ditentukan pada setiap hitungan waktu. Software yang dipelajari adalah blender',
    imageAsset: 'assets/images/animation.png',
    imageUrls: [
      'assets/images/animation1.png',
      'assets/images/animation2.png',
      'assets/images/animation3.png'
    ],
  ),

  JurusanTik(
    name: 'IT Support',
    description: 'mempelajari tentang IT Support yang dibutuhkan oleh perusahaan dalam kehidupan sehari-hari',
    imageAsset: 'assets/images/ts.png',
    imageUrls: [
      'assets/images/ts1.png',
      'assets/images/ts2.png',
      'assets/images/ts3.png'
    ],
  ),

  JurusanTik(
    name: 'Multimedia',
    description: 'mempelajari cara membuat video berkualitas',
    imageAsset: 'assets/images/multimedia.png',
    imageUrls: [
      'assets/images/multimedia1.png',
      'assets/images/multimedia2.png',
      'assets/images/multimedia3.png'
    ],
  ),

  JurusanTik(
    name: 'Network',
    description: 'mempelajari jaringan komputer baik mikrotik dan Cisco',
    imageAsset: 'assets/images/networking.png',
    imageUrls: [
      'assets/images/networking1.png',
      'assets/images/networking2.png',
      'assets/images/networking3.png'
    ],
  ),
];