import 'package:aplikasi_cafe/models/cafe.dart';

var cafeList = [
  Cafe(
    headerPhotos: [],
    name: 'Cafe Nostalgia',
    location: 'Jl. Bangau, 9 Ilir, Ilir Timur II, Kota Palembang', 
    description: 'Kopi Nostalgia berlokasi di Jalan Bangau, Palembang, menghadirkan suasana hangat dan nyaman bagi penikmat kopi. Desain interiornya klasik modern dengan sentuhan vintage yang menambah kesan “nostalgia”, cocok untuk bekerja, bersantai, atau berbincang santai. Menu andalannya meliputi aneka kopi susu, pastry, dan makanan ringan. Café ini menjadi tempat favorit kalangan muda dan pekerja lepas karena atmosfernya tenang dan estetik. Jam operasionalnya mulai pukul 08.00 hingga 22.00 WIB, dengan pelayanan ramah serta area indoor dan outdoor yang tertata rapi, menjadikannya tempat ideal melepas penat di tengah kota Palembang',
    jamOperasional: 'Dilaporkan buka dari jam 08.00 sampai jam 22.00',
    imageAsset: 'images/nostalgia/nostalgia.jpg',

    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Koat',
    location: 'Jl. Angkatan 45, Lorok Pakjo, Kec. Ilir Barat I, Kota Palembang, Sumatera Selatan, Indonesia',
    description: 'Koat Coffee adalah café modern dengan desain minimalis yang menghadirkan pengalaman ngopi dengan pemandangan menarik di sekitar jalur LRT Palembang. Walau data jam buka belum pasti, café ini biasanya beroperasi dari pagi hingga malam hari. Menu-menu kopinya menggunakan biji pilihan lokal yang diracik secara profesional. Suasananya nyaman dengan pencahayaan lembut dan area kerja yang tenang, cocok untuk produktivitas. Koat Coffee juga sering mengadakan acara musik akustik dan pameran seni kecil. Tempat ini semakin dikenal di kalangan pecinta kopi muda karena perpaduan konsep urban dan atmosfer rileks yang menenangkan',
    jamOperasional: 'buka 24 jam',
    imageAsset: 'images/koat/koat.jpg',
    isFavorite: true,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe For Good Luck',
    location: 'Jl. Sri Gunting, 9 Ilir, Kec. Ilir Tim. II, Kota Palembang 30113',
    description:
    'For Good Luck atau FGL Café yang berlokasi di Jalan Sri Gunting, Palembang, menghadirkan suasana cerah dan ramah keluarga. Tempat ini terkenal dengan area luas, desain interior estetik, serta fasilitas ramah anak seperti area bermain kecil. FGL menjadi tempat ideal untuk sarapan, brunch, atau ngopi sore karena buka mulai 07.00 hingga 23.00 WIB. Menu andalannya berupa kopi artisan, pasta, dan dessert kekinian. Pengunjung menyukai ambience hangat dan pelayanan yang cepat. Dengan konsep “family-friendly coffee space”, FGL berhasil menjadi salah satu café populer di Palembang yang cocok untuk semua kalangan dan suasana.',
    jamOperasional: 'buka dari pukul 07.00 – 23.00 setiap hari.',
    imageAsset: 'images/for-good-luck/for_good_luck.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Loer',
    location: 'Jl. Kapten A. Rivai, Jl. MP Mangkunegara No. 6B',
    description:
    'Rumah Loer merupakan jaringan café lokal kebanggaan Palembang yang sudah memiliki beberapa cabang, antara lain di Jalan Kapten A. Rivai dan Jalan MP Mangkunegara. Dengan konsep “kopi lokal rasa internasional”, café ini memadukan nuansa modern dan kearifan lokal. Interiornya hangat, dipenuhi aroma kopi khas nusantara. Salah satu cabangnya buka dari 06.00 pagi hingga 02.00 dini hari, melayani pelanggan dari waktu sarapan hingga nongkrong malam. Menu andalannya meliputi kopi susu Loer, makanan tradisional, dan camilan modern. Rumah Loer juga sering menjadi lokasi event musik dan komunitas kreatif Palembang',
    jamOperasional: 'buka dari 06.00 - 02.00 (pagi sampai larut) di lokasi Kota Tengah',
    imageAsset: 'images/loer/loer.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Nako',
    location: 'Jl. Demang Lebar Daun, Kecamatan Ilir Barat I, Kota Palembang',
    description:
    'kopi Nako kini hadir di Jalan Demang Lebar Daun, Palembang, membawa suasana khas konsep “ngopi terbuka” yang populer di berbagai kota. Tempatnya luas, dengan area indoor ber-AC dan outdoor garden yang cocok untuk sore atau malam hari. Desainnya didominasi kaca dan beton modern minimalis. Kopi Nako dikenal dengan menu “es kopi nako” dan berbagai varian minuman susu-kopi yang terjangkau. Beberapa cabangnya bahkan buka 24 jam, menjadikannya tempat nongkrong favorit semua kalangan. Suasana hangat, ramai namun tetap nyaman membuat Kopi Nako jadi ikon baru dunia kopi Palembang',
    jamOperasional: 'buka 24 jam',
    imageAsset: 'images/nako/nako.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Sanjo',
    location: 'Jl. Diponegoro No. 22, Talang Semut, Kec. Bukit Kecil, Kota Palembang, Sumatera Selatan',
    description:
    'Café Sanjo Palembang merupakan tempat nongkrong modern yang menggabungkan suasana nyaman dengan cita rasa khas Palembang. Terletak di lokasi strategis di pusat kota, café ini menjadi pilihan favorit bagi anak muda, keluarga, dan pekerja yang ingin bersantai atau bekerja sambil menikmati hidangan lezat',
    jamOperasional: 'setiap hari mulai pukul 10.00 hingga sekitar 23.00',
    // Perlu ditambahkan gambar untuk Cafe Sanjo
    imageAsset: 'images/placeholder.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Nagara',
    location: 'Jl. Letjen Harun Sohar, Palembang, Sumatera Selatan',
    description:
    'Candi Sari, atau Candi Bendah, adalah candi Buddha yang terletak di Desa Tirtomartani, Sleman, Yogyakarta. Dibangun pada abad ke-8 dan ke-9 saat Kerajaan Mataram Kuno, candi ini memiliki 9 stupa di bagian atasnya yang tersusun dalam 3 deretan sejajar, mirip dengan Candi Borobudur. Bangunannya mirip dengan Candi Plaosan dan memiliki ruangan bertingkat dua di bawah stupa, mungkin digunakan untuk meditasi biksu. Dulu digunakan sebagai Vihara Buddha untuk belajar dan mengajar para biksu.',
    jamOperasional: '10.00 – 24.00 WIB',
    imageAsset: 'images/nagara/nagara.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Soree',
    location: 'Jl. Veteran No. 531, 20 Ilir D. I., Palembang, Sumatera Selatan 30114',
    description:
    'Soree Café yang beralamat di Jalan Veteran No.176, Palembang, dikenal sebagai tempat nongkrong estetik dengan dua lantai berdesain modern elegan. Setiap sudutnya fotogenik, menjadikannya spot favorit untuk foto maupun bersantai. Soree menyajikan hidangan fusion Asia dan Barat dengan cita rasa khas, serta kopi premium yang disukai pengunjung. Dengan kisaran harga menengah, café ini ramai dikunjungi kalangan muda dan profesional muda. Jam buka 10.00 hingga 23.00 WIB, cocok untuk lunch meeting atau dinner santai. Suasana hangat, pelayanan ramah, serta musik lembut menjadikan Soree salah satu destinasi kopi terbaik di Palembang',
    jamOperasional: 'buka pukul 10.00-23.00 WIB',
    imageAsset: 'images/soree.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Taki',
    location: 'Jl. Taman Kenten, 8 Ilir – Palembang (sebelah Quattro Mini Soccer)',
    description:
    'Taki Coffee & Eatery terletak di Jalan Taman Kenten, Palembang, tepat di samping Quattro Mini Soccer. Café ini memiliki konsep muda dan energik, dengan dekorasi modern serta area outdoor luas yang sering menjadi tempat nongkrong malam. Jam operasionalnya panjang, yakni 11.00 siang hingga 03.00 pagi, menjadikannya pilihan pas untuk anak muda yang suka nongkrong larut malam. Menu utamanya beragam kopi, minuman non-kafein, serta makanan western dan lokal. Musik dan suasana hangatnya membuat Taki selalu ramai, terutama di akhir pekan. Tempat ini sering menjadi lokasi kumpul komunitas kreatif dan musik akustik',
    jamOperasional: 'buka 11.00-03.00 pagi',
    imageAsset: 'images/taki/taki.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe CCE Space',
    location: ' Jl. Taman Kenten, 8 Ilir, Kec. Ilir Tim. II, Kota Palembang, Sumatera Selatan',
    description:
    'CCE Space terletak di Jalan Taman Kenten, Palembang, dikenal sebagai café dengan konsep modern dan ruang terbuka yang luas. Tempat ini menjadi pilihan favorit mahasiswa dan pekerja karena buka 24 jam setiap hari, cocok untuk nongkrong malam atau mengerjakan tugas hingga larut. Interiornya mengusung gaya industrial minimalis dengan pencahayaan hangat yang nyaman. Menu yang ditawarkan bervariasi, mulai dari kopi, teh, hingga makanan ringan dan berat. Suasana malamnya hidup namun tetap tenang, menjadikan CCE Space salah satu spot nongkrong paling fleksibel di Palembang bagi siapa pun yang mencari tempat produktif sekaligus santai',
    jamOperasional: 'buka 24 jam setiap hari',
    imageAsset: 'images/cce-space.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe DayOne',
    location: 'Jl. Letkol Iskandar, Palembang, Sumatera Selatan',
    description:
    'DAYONE Coffee Indonesia menyajikan kopi spesialti dengan kualitas konsisten dan harga terjangkau. Suasana cafe modern dan nyaman mendukung pengunjung untuk bekerja maupun bersantai. Menu kopi bervariasi dari espresso hingga latte, disertai menu camilan dan dessert. Area indoor dan outdoor tersedia untuk kenyamanan pengunjung. Tempat ini cocok bagi mahasiswa, pekerja, dan pecinta kopi.',
    jamOperasional: '08.00 – 22.00 WIB',
    imageAsset: 'images/dayone.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Days Cafe',
    location: 'Jl. Dr. M. Isa III, Palembang, Sumatera Selatan',
    description:
    'Days Cafe menawarkan suasana hangat dan nyaman, ideal untuk keluarga maupun anak muda. Menu kopi, teh, minuman segar, dan makanan ringan hingga berat tersedia lengkap. Interior modern dengan pencahayaan natural membuat pengunjung betah berlama-lama. Area duduk outdoor juga disediakan untuk menikmati udara segar. Cocok untuk santai sore, meeting kecil, atau hangout bersama teman',
    jamOperasional: '10.00 – 22.00 WIB',
    imageAsset: 'images/days-cafe/days-cafe.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Eightynine',
    location: 'Jl. Rajawali, Palembang, Sumatera Selatan',
    description:
    'EightyNine Coffee menawarkan suasana nyaman dengan desain interior minimalis modern. Menu kopi beragam, termasuk single origin, espresso, dan minuman signature. Cafe ini juga menyediakan minuman non-kopi dan snack ringan. Area duduk indoor dan outdoor cocok untuk nongkrong atau bekerja. Tempat ini populer bagi mahasiswa dan pekerja muda yang mencari suasana santai',
    jamOperasional: '09.00 – 22.00 WIB',
    imageAsset: 'images/eightynine.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Enamdua',
    location: 'Jl. Angkatan 45, Palembang, Sumatera Selatan',
    description:
    'Enamdua Coffee & Eatery menawarkan konsep modern dan nyaman. Menu meliputi kopi spesialti, minuman kekinian, serta makanan berat dan ringan. Area indoor dan outdoor luas, cocok untuk pertemuan santai atau bekerja. Suasana hangat dan pelayanan ramah menambah kenyamanan pengunjung. Cafe ini populer di kalangan mahasiswa dan pekerja muda',
    jamOperasional: '10.00 – 22.00 WIB',
    imageAsset: 'images/enamdua/enamdua.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Kopi dari hati',
    location: 'Jl. Kolonel Atmo, Palembang, Sumatera Selatan',
    description:
    'Kopi Dari Hati & Toast menggabungkan konsep modern dengan menu kopi dan toast kekinian. Suasana cafe santai dan nyaman, cocok untuk anak muda maupun mahasiswa. Menu andalan adalah es kopi susu dan berbagai toast dengan topping unik. Area duduk indoor dan outdoor instagramable. Tempat ini cocok untuk nongkrong, belajar, atau meeting kecil',
    jamOperasional: '10.00 – 23.00 WIB',
    imageAsset: 'images/kopi-dari-hati.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe Luthier',
    location: 'Jl. Bangau No. 170C, Palembang, Sumatera Selatan',
    description:
    'Luthier Coffee menawarkan suasana tenang dan cozy, cocok untuk bekerja, membaca, atau bersantai. Menu utama adalah kopi nusantara hasil sangrai sendiri dengan cita rasa khas. Cafe ini menyediakan camilan ringan dan dessert untuk menemani kopi. Interior nyaman dengan pencahayaan hangat mendukung aktivitas fokus. Pengunjung dapat menikmati kopi sambil mendengarkan musik ringan dan menikmati dekorasi minimalis',
    jamOperasional: '07.00 – 22.00 WIB',
    imageAsset: 'images/luthier.jpg',
    isFavorite: false,
  ),
  Cafe(
    headerPhotos: [],
    name: 'Cafe York',
    location: 'Jl. Radial, Palembang, Sumatera Selatan',
    description:
    'York Cafe mengusung konsep industrial modern dengan interior stylish. Menu kopi lengkap, dari espresso hingga signature drinks, dilengkapi makanan ringan. Cafe ini cocok untuk bekerja, meeting, atau nongkrong bersama teman. Suasana nyaman dengan pencahayaan hangat mendukung pengalaman bersantai. Area indoor dan semi-outdoor tersedia untuk fleksibilitas',
    jamOperasional: '09.00 – 22.00 WIB',
    imageAsset: 'images/york-cafe.jpg',
    isFavorite: false,
  ),
];
