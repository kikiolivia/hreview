-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Mei 2017 pada 00.09
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hreview`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(3, 'admin', 'c53255317bb11707d0f614696b3ce6f221d0e2f2'),
(4, 'kiki', '0a5a5f6907194bba404d67fed4dec84f6f82e474');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `category_name`, `icon`) VALUES
(1, 'Keyboard', 'fa fa-keyboard-o'),
(2, 'Mouse', 'fa fa-mouse-pointer'),
(3, 'Laptop', 'fa fa-laptop'),
(4, 'Smartphone', 'fa fa-android');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `name`, `reply`, `status`, `date`) VALUES
(1, 9, 'kiki', 'hello world', 1, '2016-12-29 19:21:53'),
(2, 16, 'dede', 'bagus sekali', 1, '2016-12-31 07:57:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `description1` text NOT NULL,
  `description2` text NOT NULL,
  `description3` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`id`, `category_id`, `tittle`, `description`, `description1`, `description2`, `description3`, `image`, `date`) VALUES
(3, 3, 'Review Laptop ASUS A540LJ', '<b>First Impression</b>, Kesan awal yang kami lihat dari laptop ini adalah elegan dan stylish dengan balutan warna coklat dan rose gold dari 2 varian warna yang ada. Bodi yang diusungnya terbilang tipis untuk laptop kelas 15 inci, dan dengan desain full size keyboard yang khas dari Asus. <b>Hands On</b>, Bisa dibilang laptop ini adalah solusi bagi mahasiswa atau pelajar yang membutuhkan laptop yang â€œpasâ€ dikantong untuk mengerjakan tugas, hiburan untuk menonton film, mendengarkan lagu ataupun sekedar browsing dan streaming.', '<b>Fitur</b>, Asus sendiri dikenal sebagai vendor yang serius dalam memberikan fitur agar produknya dikenal sebagai yang terdepan dalam inovasi, seperti yang kita tahu bahwa setiap laptop asus dibekali oleh fitur InstantOn yang membuat awake lebih cepat yakni 2 detik, IceCool yang membuat laptop tetap adem saat kita menggunakannya, Asus SonicMaster pada audionya, dan smart gesture yaitu semacam fitur dari Asus yang membantu untuk menggunakan touchpad. Ada hal yang menarik bagi kami yaitu dengan adanya satu buah port USB type-C pada sisi kiri bersebelahan dengan input power. <b>Performa</b>, Berbicara soal performa laptop ini mungkin tak ada yang dilebihkan dari spesifikasinya mengingat prosesor yang hanya dual core saja, akan tetapi disini Asus menggantikan prosesor dari seri sebelumnya yaitu Intel Dual Core N3050 (sebelumnya Intel Dual Core N2800). Dari segi VGA laptop ini dipersenjatai oleh Intel HD 4000 yang menurut kami umum digunakan untuk laptop kelas Entry Level atau Low Budget dan bukan ditujukan untuk Gaming. ', '<b>Kesimpulan</b> Sejauh review ini kami berpendapat bahwa laptop ini merupakan teman yang ideal untuk kamu yang menginginkan desain yang stylish dan elegan serta bergaya kekinian dengan berat dan ketebalan yang bagus serta layar yang cukup lebar untuk menemani kamu browsing dan menonton video. Dipasaran harga laptop ini cukup bervariatif dari rentang harga Rp3.000.000 â€“ 3.500.000 kamu sudah bisa membawa pulang laptop ini. ', '', 'IMG_20161229_162145.jpg', '2016-12-31 07:31:09'),
(4, 1, 'Review Keyboard Digital Alliance Premium Meca Z', '<b>First Impression</b>, Jika kamu adalah seorang pc gamer, hal yang wajib kamu punya salah satunya adalah keyboard mechanical. Ini merupakan hal yang lazim karena kebanyakan equip gamer sangatlah berbeda dari pengguna pc pada umumnya. Pada Kali ini kami akan mereview keyboard Digital Alliance Premium Meca Z. <b> Hands On </b>, Apabila dilihat secara sekilas, bodinya mirip dengan keyboard premium yakni Razer Blackwidow Ultimate karena berbahan metal, kokoh dan dengan finishing hitam doff yang terlihat begitu premium. Kabelnya sendiri sudah nylon braided dan pada port USB sudah gold plated.', '<b>Fitur</b>, Salah satu fitur yang sangat menarik pada keyboard mechanical ini adalah â€œWater Proofâ€. Dalam beberapa review berupa video yang diklaim oleh vendor Digital Alliance, keyboard ini dicelupkan kedalam akuarium yang penuh dengan air dan tetap berfungsi normal. Keyboard ini memiliki 19 mode led effect yang cukup variatif, dan switch dapat dilepas serta keycaps yang sudah abs molded.\r\n<b>Performa</b>, Switch adalah bagian yang sangat disukai para pengguna keyboard mechanical, keyboard ini menggunakan blue switch buatan outemu yang memiliki tactile feedback dan feelnya hampir mirip dengan cherrymx akan tetapi lebih ringan sedikit dan switchnya pun bisa dilepas dari frame keyboardnya serta bisa diganti dengan switch merek lain. Bicara keyboard premium maka aneh apabila tidak menggunakan efek led, kami sendiri memuji untuk efek led yang terdapat pada DA premium ini. Terdapat 19 mode, efek led ini cukup banyak dan dapat bersaing dengan keyboard kelas enthusiast seperti Razer dan Logitech. Akan tetapi led tidak bisa diatur per key seperti pada Razer, ', '<b>Kesimpulan</b> Keyboard mechanical ini layak menjadi pilihan apabila kamu seorang gamer yang mid budget dan menginginkan led dengan efek yang wah, apabila style bermain dalam mejamu seperti â€œwartegâ€ atau â€œngasoâ€ maka keyboard inilah yang sanggup menemanimu karena anti ketumpahan cairan. Dengan rentang harga dari Rp750.000-900.000 menurut kami keyboard ini cukup worth untuk dibeli.', '', '3829877_d060b8fa-9bd2-4081-b997-c76eaf4e36a8_1280_720.jpg', '2016-12-31 07:46:05'),
(5, 2, 'Review Mouse Gaming berfitur macro A4Tech X7', 'Halo sobat Harview! Sudah lama admin tidak memposting sesuatu yang berhubungan dengan sesuatu yang berbau gaming, oke tanpa basa-basi lagi kali ini kita akan mengulas Mouse Gaming  X7 F7 dari A4Tech.', '<b>First Impresion</b>, Dari segi tampilan sendiri, mouse ini cukup terkesan â€œgamingâ€ nya, Kenapa? Karena pada permukaan atas mouse menggunakan skin berbahan kertas dan permukaannya memiliki tekstur yang tidak rata yang menurut saya kurang nyaman apabila berlama-lama menggunakan mouse ini. Pada bagian punggung terdapat Logo khas A4Tech dari seri mereka yaitu â€œâ€™X7â€. <b>Hands On</b>, Dari ukurannya mouse ini cocok dengan gamer yang cara memegang mousenya bertipe palm grip (punggung telapak tangan berukuran besar dan menutup punggung mouse). Sedangkan di sisi kanan dan kiri mouse terdapat bantalan karet yang bergelombang membentuk garis agar jempol, jari manis dan kelingking kita tidak slip saat bermain. Kabelnya pun tak kalah menarik, yaitu dilengkapi dengan nylon braided yang cukup tebal dan melindungi kabel serta port usb yang sudah gold plated. ', '<b>Fitur</b> Dalam segi fitur, A4Tech tak mau kalah oleh merek pesaing lain dengan memberi senjata utama mereka di mouse ini yaitu chip macro untuk menyimpan setting macro pada mouse X7. Ini terlihat dari software mereka sertakan dengan menginstall cd driver yang tersemat dalam paket pembelian mouse ini. Setelah menginstall X7 driver maka kamu akan melihat tampilan macro manager yang cukup lengkap dan agak membingungkan bagi kamu yang belum terbiasa menggunakan macro. Dilengkapi dengan 5 profile mode gaming, 8 tombol yang dapat dikostumisasi dan 1 tombol tambahan pengatur DPI  (Depth per Inch) sampai dengan 3000DPI, maka apa yang kurang dari mouse yang terbilang low end budget ini. <b>Kesimpulan<b>, Setelah kami melakukan beberapa pengujian, mouse ini layak untuk gamer dengan budget minim namun dengan fitur makro yang powerful. Mengingat perform per price nya yang sangat masuk akal maka tak ada salahnya menjatuhkan pilihan pada mouse ini, untuk saat ini kisaran harga mouse ini sekitar Rp215.000 â€“ 270.000.', '', 'download.jpg', '2016-12-31 07:49:02'),
(6, 3, 'Harga Laptop Xiaomi Mi Notebook Air, Pesaing Apple Macbook Air', 'Detekno.com â€“ Harga Laptop Xiaomi Mi Notebook Air sudah diketahui, dan dipastikan jauh lebih murah dibandingkan pesaing-pesaingnya, terutama Apple Macbook Air. Walaupun bagi sebagian orang harganya tergolong sangat mahal, namun spesifikasinya mampu mengimbangi harga Laptop Xiaomi tersebut. Owh yah, Laptop ini akan hadir dalam dua ukuran layar berbeda, yakni berukuran 13.3 inci, dan 12.5 inci. Setiap tipenya memiliki spesifikasi hardware berbeda pula, sehingga otomatis akan mempengaruhi harga Laptop Xiaomi tersebut.', 'Untuk spesifikasinya sendiri, Xiaomi Mi Notebook Air akan ditenagai Processor Intel Core i5 generasi ke enam yang didalamnya memiliki processor Dual Core 4 Threads dengan kecepatan mencapai 2.7 Ghz. Tak hanya itu saja, dibalik mahalnya harga Laptop Xiaomi Mi Notebook Air juga terpasang Ram DDR4 berakapasitas 4GB, dan VGA bertipe NVIDIA GeForce 940MX. Performa laptop ini akan sangat cepat, dan bisa diandalkan untuk bermain game dan menjalankan aplikasi berat dengan mulus. Terlebih didalamnya sudah terinstal sistem operasi Windows 10 yang menurut kami memiliki performa lebih stabil dibandingkan Windows 7 ataupun Windows 8. Lalu pada bagian media penyimpanan sudah ada memori SSD berkapasitas 256GB yang bisa diekspansi. Kelebihan lain dari Laptop Xiaomi ini adalah memiliki baterai sangat awet, karena baterainya mampu bertahan selama 9.5 Jam dengan waktu pengisian 50% dalam waktu 30 menit saja. Selain itu, Laptop ini juga dilengkapi port USB Type-C serta konektor HDMI dan tiga buah port USB 3.0.', 'Bodi Full Metal dengan bobot yang ringan serta ukuran yang tipis menjadi nilai tambah laptop Mi Notebook Air 13.3â€³. Laptop ini memiliki ukuran dimensi panjang 309.6mm lebar 210.9 mm, dan ketebalan 14.8 mm. Sedangkan bobotnya cuma 1.28 kg, sehingga sobat deteknokers bisa membawanya kemanapun dengna sangat nyaman. Menariknya lagi, laptop ini memiliki layar Full HD 1080 x 1920 pixel yang dibentangkan seluas 13.3 inci. Layar tersebut memiliki bezel sangat tipis, karena ukurannya cuma 5.59 mm. Layar Full HD dengan perlindungan Edge To Edge Glass semakin menambah sempurna Mi Notebook Air untuk bersaing melawan Apple Macbook Air. Selain itu, laptop Xiaomi tersebut juga dilengkapi dua buah speaker custom yang mendukung teknologi Dolby Digital surround sound. Lalu tersedia pula Wi-Fi Dual Band untuk mendukung konektivitas laptop Xiaomi Mi Notebook Air 13â€³3 inci tersbut, dan sudah ada fitur Bluetooth v4.1 yang memungkinkan sobat membuka lock screen Xiaomi Mi Notebook Air dengan Xiaomi Mi Band. Kemudian untuk segi harga, Xiaomi membanderol harga Laptop Xiaomi Mi Notebook Air 13.3 inci seharga RMB 4.999 atau apabila kita rupiahkan mencapai Rp. 9.8 Jutaan. Harga Laptop Xiaomi Mi Notebook Air tersebut jauh lebih lebih murah dibandingkan Macbook Air yang dibanderol melebihi 15 Jutaan, sehingga laptop ini bisa menjadi solusi bagi sobat deteknokers yang mencari laptop terjangkau dengan kualitas terbaik saat ini.  Selanjutnya mari kita simak spesifikasi dan harga Laptop Xiaomi Mi Notebook Air untuk varian layar 12.5 inci.', '', 'xiaomi-mi-notebook-air.jpg', '2017-01-02 02:46:49'),
(7, 4, 'Review Asus Zenfone 3 ZE552KL', '<b>Review </b> Asus Zenfone 3 ZE552KL â€“ Akhirnya tepat di hari ini, Asus secara resmi memperkenalkan tiga varian smartphone terbaru mereka yakni Asus Zenfone 3 Ultra ZU680KL, Asus Zenfone 3 Deluxe ZS570KL, dan Asus Zenfone 3 ZE552KL yang kali ini akan kita bahas bersam-sama. Sebelum membahas lebih lanjut, Asus Zenfone 3 ZE552KL sendiri bisa di bilang menjadi versi paling murah di bandingkan dengan dua seri diatas, karena spesifikasi yang di tawrakan jauh lebih rendah, namun tetap saja performa yang di suguhkan tetap sempurna. Hadir dengan membawa layar seluas 5.5 inci dengan ditemani panel Super IPS LCD beresolusi Full HD 1080 x 1920 pixels, menjadi satu kelebihan yang di tawarkan smartphone ini. Bahkan lebih hebatnya lagi panel yang di berikan Asus pada seri ini juga sudah memiliki tingkat kerapatan pixels mencapai 401 yang otomatis akan membuatnya semakin sempurna dalam menghadirkan visual. Selebihnya dengan harga Asus Zenfone 3 ZE552KL yang lebih murah, asus tetap memberikan lapisan Gorilla Glass 3. Dimana lapisan ini mampu membuat layar yang di suguhkan tetap aman dari beragam goresan benda tajam. Bahkan bila di lihat lebih dekat, tepian lauyarnya juga disertai dengan teknologi layar 2.5D yang membuatnya terlihat lebih apik dan membuat bazel layar lebih tipis. Bahkan untuk membuatnya lebih cantik pada bagian belakang, Asus juga menyertakan lapisan kaca serupa dengan teknolgi yang sama sehingga membuatnya terlihat lebih elegan dan sempurna. ', 'Kemudian sebanding dengan harga yang di tawrakan, ponsel ini juga memiliki tubuh yang cukup ramping karena hanya memiliki tebal 7.7 mm dengan panajang 152.6 mm, dan lebat 77.4 mm. Bodinya sendiri terbuat dari material plastik yang di padukan dengan frame metal, yang mana komposisi ini jauh membuatnya lebih apik dari seri Asus Zenfone 2 yang sudah banyak beredar di pasar Indonesia saat ini. Dengan demikian ponsel ini bisa menjadi alternatif lain bagi sobat deteknokers yang sedang mengincarnya. Bergeser pada sektor performa, smartphone yang di operasikan dengan OS Android Marshmallow 6.0.1 dengan user interface Asus ZenUI 3.0 sudah di bekali sebuah dapur pacu yang cukup sempurna, dimana seperti informasi di halaman GSMarena.com ponsel ini menggunakan chipset Qualcomm MSM8953 Snapdragon 625 yang mampu berpacu cepat dengan hadiarnya prosesor Octa Core 64-Bit dengan clock speed 2.0 Ghz. Tak sebatas itu ada pula dukungan GPU Adreno 506 sebagai pengolah grafisnya. Hampir sama seperti ponsel Asus Zenfone lainnya, kali ini Asus juga meberikan dua model pada seri Asus Zenfone 3 ZE552KL ini, yakni model Ram 2GB dengan bekalan kapasitas internal memori seluas 32GB dan model Ram 4GB dengan kapasitas memori seluas 64GB yang mana keduanya tetap bisa diperkuas dengan hadirnya slot microSD card (Hybrid) yang mampu menampung kapasitas hingga 128GB. Dengan demikian sobat deteknokers tak perlu lagi khawatir dengan urusan penyimpanannya.', 'Harga Asus Zenfone 3 ZE552KL model Ram 4GB otomatis akan lebih mahal di bandingkan dengan seri Ram 3GB. Selanjutnya pada bagian kamera, berbeda dari seri Asus Zenfone 3 Ultra ZU680KL ataupun Asus Zenfone 3 Deluxe ZS570KL, pada seri ini Asus hanya meletakan lensa berukuran 16 MP, namun sudah di sertai dengan teknologi TriTech autofocus yang mana kamera akan secara otomatis akan memilih diantara laser autofocus dan phase detection autofocus untuk mencapai focus yang sempurna. Menariknya teknologi ini membuat sobat hanya perlu menunggu selama 0.03 detik agar lensa kamera utama ini mampu mencapai focus yang sempurna. Tak tertinggal ada juga fitur OIS (4-axis) yang sebelumnya di gunakan oleh Xiaomi Mi5 dan juga dual-LED (dual tone) flash serta beberpa fitur pendukung. Sayangnya dengan harga Asus Zenfone 3 ZE552KL yang ada, lensa ini belum bisa merekam video 4K hanya sebatas Full HD 1080p@30fps. Kamera depan disediakan lensa 8 MP dengan aperture f/2.0 dan kemampuan merekam video Full HD 1080p@30fps. Nah untuk memuaskan setiap penggunanya, Asus juga menyematkan bateai berukuran 3000 mAh yang tak bisa di lepas untuk membuatnya bisa bertahan selama seharian. Sementara untuk urusan konektifitas, menariknya disisi, Asus meletakan port USB Type-C seperti dahulu pernah di kabarkan. Lalu ada juga Wi-Fi 802.11 a/b/g/n/ac berteknologi Wi-Fi Direct, hotspot, serta ada pula Bluetooth v4.2, dan GPS dengan mengandalkan satelit A-GPS dan GLONASS sebagai media navigasinya. Lalu berapa harganya ?', 'Senada dengan uraian spesifikasi diatas, memang tak salah bila harga Asus Zenfone 3 ZE552KL yang di tawrakan cukup tinggi, karena melalui informasi yang ada, diketahui ponsel ini di bandrol seharga USD $249 atau hampir setara dengan Rp 3.3 jutaan. Harga tersebut memang sangat pantas untuk ponsel ini. Terlebih lagi Asus juga memberikan dukungan dual sim dengan kemampuan mengakses internet berkecepatan 4G LTE Cat6 300/50 Mbps dan juga 3G HSPA 42.2/5.76 Mbps serta juga tak tertinggal adanya dukungan fingerprint sensor dibagian belakang sebagai fitur keamamananya. Nah bagaimana tertarik membelinya ?', 'asus-zenfone-3.jpg', '2017-01-02 03:05:13'),
(11, 2, 'Review : Mouse Logitech G300s 9 Tombol Macro dengan Harga Terjangkau', 'Kesan pertama melihat tampilan mouse ini sangat elegan dengan campuran antara warna hitam dan biru dibawahnya serta lightning yang warnanya bisa disesuaikan. Jadi tambil lebih pas sesuai dengan gaming atau disesuaikan dengan gaming gear lainnya. Jadi apa perbedaan dengan mouse yang tipe G300 ? Tidak ada yang membedakan untuk fitur â€“ fiturnya, yang membedakan hanya dibagian logo logitech di mousenya. Selain logo itu, tidak ada hal lain yang berubah dari G300 ke G300s ini.', 'Saat pertama membuka disuguhkan kotak yang berisikan satu mouse yang siap digunakan beserta buku panduannya. Kertasnya hanya berisikan tentang fitur-fitur dan cara settingnya untuk ke-9 tombol yang disediakan logitech untuk mouse ini. untuk size mouse ini lumayan kecil 112 x 73 x 35mm = panjang x lebar x tinggi, tapi untuk pemegang mouse dengan tipe fingertip dan bertangan panjang seperti saya, size seperti ini sudah sangat lebih dari cukup dan nyaman untuk bermain game. Untuk fitur-fiturnya, mouse ini dilengkapi dengan 9 tombol  yang bisa diprogram sendiri menggunakan aplikasi dari logitech. Tombol-tombol yaitu, 3 tombol mouse biasa (right-click, left-click, dan tombol scroll mouse), dua disebelah kanan tombol right-click, dua disebelah kiri tombol left-click, dan dua dibelakang scroll mouse.', 'Penggunaan 9 tombol tersebut bisa disetting sesuai dengan gamenya, jadi saat sedang memainkan salah satu game settingan mouse akan menyesuaikan dengan settingan gamemu. Jadi kamu bisa setting sesuai dengan game FPS, MOBA, MMORPG atau bahkan untuk penggunaan sehari-hari seperti copy-paste. Ohya untuk dapat menggunakan mouse ini, diharuskan untuk windows vista keatas, bagi kamu yang masih nostalgia dengan windows XP dan ingin menggunakan mouse ini, sekarang saatnya move on ke windows yang lebih baru.', 'Logitech menawarkan resolution speednya dari 250 â€“ 2500 dpi, dijamin cursor bergerak cepat jika kamu maksimalkan  sampai 2500 dpi. Selain itu juga kamu bisa ubah watna lightningnya, logitech memberikan 8 macam warna yang bisa kamu sesuaikan dengan seleramu. Untuk kekurangannya bagi yang belum terbiasa dengan tombol yang ditempatkan agak mainstream karena biasanya saya menggunakan pada tombol di pinggir kanan atau kiri. Jadi buat saya hal itu masih perlu untuk membiasakan memencet tombol-tombol tambahannya. Begitulah review dari saya mewakili Hreview. Untuk harga yang tertera di web resmi logitech 349.000, tapi saya entah beruntung atau gimana dapat mouse ini dengan harga dibawah itu yaitu 275.000.', 'LOGITECH-Gaming-Mouse-G300S-2.jpg', '2017-01-02 13:20:13'),
(12, 1, 'wer', 'rew', 'rew', 'rew', '', '', '2017-01-02 13:21:10'),
(13, 3, 'Review Acer E5-553G', 'Notebook saat ini boleh didominasi oleh prosesor Intel, namun bukan berarti AMD tidak membiarkannya begitu saja. Melalui salah satu prosesor Bristol Ridge-nya, prosesor AMD A12-9700P mencoba untuk bersaing di kelas menengah ke atas. Di atas kertas, prosesor ini memiliki performa di atas Intel Core i5-6200U, namun masih di bawah Core i7-6700K. Pengukuran performa ini berdasarkan pada pengujian cpuboss. Melihat performa prosesor di atas, Acer menggunakan prosesor AMD Bristol Ridge A12-9700P pada salah satu notebook mainstream miliknya, Acer E5-553G, yang saat ini dapat dikatakan sebagai notebook gaming andal yang ramah di kantong.', '<b>Kelebihan</b>, Bodi premium. Desain bodi yang diusung oleh Acer E5-553G terkesan sangat premium. Saat yang lain membuat notebook dengan desain glossy dan matte, justru pada notebooknya ini Acer membuat adanya aksen garis vertikal dan horizontal yang dapat dirasakan oleh tangan sehingga membuat bagian luarnya tidak mudah terceplak sidik jari. Perfoma sebanding dengan harga. Penggunaan prosesor AMD menjadi daya tarik tersendiri untuk Acer E5-553G. Disaat masyarakat masih belum percaya dengan AMD, justru melalui notebook ini Acer ingin menunjukkan bahwa prosesor dan GPU AMD mampu melakukan hal-hal yang cukup berat. Dengan penggunaan prosesor A12-9700P, GPU AMD Radeonâ„¢ R8 M445 DX, RAM 8 GB DDR4, dan hard disk 1 TB, notebook ini mampu menjalankan game yang cukup berat pada konfigurasi high seperti GTA V dan Dota2. Pada saat bermain, rata-rata frame rate yang didapatkan adalah 30-40 fps.', 'Speaker detail. Meskipun karakter bass yang dihasilkan masih jauh dari yang diharapkan, suara yang dimilikinya masih cukup detail dan lantang di dalam ruangan kecil. Hal ini dipengaruhi oleh penggunaan Acer Trueharmony yang memang untuk mengoptimalkan frekuensi balance guna menghasilkan kesan yang real dalam bermain game, menonton film, dan mendengarkan lagu. Interface lengkap. Interface umum seperti USB 2.0/3.0, VGA, HDMI, Audio out, LAN telah tersedia pada sisi kiri dan kanan notebook. Namun, ada port tambahan yang masih belum umum juga turut disematkan, yaitu USB Type C. Hal ini menunjukkan bahwa laptop ini memiliki lifetime yang cukup panjang mengingat USB Type C akan menjadi port yang diandalkan di masa yang akan datang', '<b>Kekurangan</b> Mudah kotor. Ada satu hal yang perlu diperhatikan. Penggunaan material aluminium pada bagian palm rest kadang akan meninggalkan bekas minyak ketika tangan sedang berkeringat. Oleh karena itu, harus lebih rajin untuk membersihkannya. Posisi tombol power kurang nyaman. Secara keseluruhan, kami hampir tidak menemukan kekurangan pada Acer E5-553G. Kendala seperti keyboard berisik dan material ringkih pada pendahulunya (Acer E5-552G) tidak lagi dirasakan. Hanya saja, keberadaan tombol power pada sisi kanan atas keyboard kerap kali tertekan. Mungkin saja hal ini hanya pengaruh kebiasaan saja. Jadi kesimpulanya ,Port yang lengkap, prosesor dan GPU yang cukup handal, serta RAM dan storage yang cukup lega dapat menjadikan notebook ini sebagai notebook gaming pilihan Anda meskipun notebook ini tidak masuk dalam seri Predator. Selain itu, ukuran layar yang lebar membuat lebih nyaman untuk menonton film atau sekedar membaca komik.', 'acer-e553-01.jpg', '2017-01-02 13:42:05'),
(14, 4, 'Review Apple iPhone 7', 'Selain Samsung Galaxy Note 7, smartphone flagship yang paling dinanti kehadirannya tahun ini adalah iPhone 7. Meski hadir lebih belakangan dari Note 7, nasib iPhone 7 ternyata lebih beruntung. Pasalnya sang lawan mengalami musibah dengan adanya kasus baterai terbakar. Akhirnya iPhone 7 jadi bisa melenggang sendiri tak ada lawan.', '<b> Kelebihan </b> Warna baru tapi lama. Apple menghadirkan dua warna baru pada iPhone 7, yaitu black dan jet black. Tapi kalau kita mengingat kembali beberapa tahun silam, warna jet black sebenarnya sudah ada sejak iPhone generasi pertama. Setelah lama hilang, kini warna tersebut kembali hadir. Jujur saja, warna hitam yang sebenarnya sudah biasa ini memang terlihat keren pada iPhone 7. Smartphone ini jadi terlihat lebih â€œclassyâ€ dan elegan. Tapi ketimbang warna jet black yang lebih mahal, kami justru lebih menyukai warna black biasa karena tidak mudah kotor dan tergores. Tombol home baru. Ada yang suka, ada pula yang tidak suka dengan tombol home baru pada iPhone 7. Tombol ini sebenarnya adalah kaca yang tidak akan melesak ke dalam ketika ditekan. Tapi Anda tetap bisa merasakan sensasi memencet dengan adanya getaran yang berasal dari Taptic Engine yang ada di dalamnya. Tombol home model baru ini diyakini tidak akan cepat rusak seperti yang sudah sering terjadi pada iPhone sebelumnya. Dengan begitu Anda tidak perlu ragu dan khawatir untuk sering menekannya. Kini Anda pun sudah bisa melupakan assistive touch.\r\n\r\nCPU quad-core. Setelah sekian lama menggunakan CPU dual-core, Apple akhirnya menyematkan CPU quad-core pada iPhone 7. Jumlah core yang hanya empat ini tentu kalah banyak dibanding rata-rata smartphone Android yang punya delapan atau bahkan sepuluh inti core. Tapi seperti yang kita tahu, CPU Apple A10 Fusion pada iPhone 7 punya teknologi super canggih. Dengan clockspeed 2.3 GHz, prosesor ini mampu hasilkan skor AnTuTu Benchmark hingga 180 ribu poin! Saat kami uji bermain game, tidak ada satu pun yang berjalan lag. Apapun yang Anda lakukan menggunakan smartphone satu ini bakal sangat menyenangkan.', 'Speaker stereo. Kualitas speaker iPhone tidak perlu diragukan. Tahun ini, Apple meningkatkan kualitas speaker iPhone terbarunya. Ada dua buah speaker pada iPhone 7 yang diletakkan di sisi bawah dekat lightning port serta satu lagi ada di dalam earpiece-nya. Suaranya kini lebih lantang dari iPhone 6 dan iPhone 6s, serta lebih detail. Kamera lebih terang dan stabil. Resolusi kamera utama iPhone 7 tetap 12 MP, sama seperti iPhone 6s. Kualitas gambarnya juga tidak jauh berbeda. Tapi yang jelas, hasil jepretannya memang lebih terang, baik dengan atau tanpa flash. Pasalnya kamera iPhone 7 dilengkapi quad-LED flash true tone dan punya aperture F/1.8 yang bisa menyerap cahaya lebih banyak. Untuk merekam video, iPhone 7 kini sudah dilengkapi OIS. Sedangkan untuk kamera depan kini lebih tajam dengan resolusi 7 MP.', '<b>Kekurangan</b> Kemana jack audio? Apa pun alasan yang dilontarkan Apple menghilangkan jack audio 3,5 mm, pastinya akan tetap terasa merugikan dan merepotkan. Kami memang merasa repot ketika sedang asyik mendengarkan musik menggunakan earpods, tapi baterai smartphone habis dan harus di-charge. Kedua hal ini tidak bisa dilakukan bersamaan karena hanya ada satu port saja. Kalau tidak mau repot, Anda bisa merogoh kocek untuk membeli Airpods atau headset wireless.Pelit baterai. Lagi lagi Apple masih enggan untuk sediakan baterai besar pada iPhone. Kapasitas baterai iPhone 7 hanya 1.960 mAh, baka terasa kurang jika digunakan untuk aktivitas padat. Anda harus mengisi baterainya dua kali sehari jika sering bermain game. Adapun rata-rata ketahanan baterainya untuk penggunaan media sosial tanpa bermain game yakni sekitar delapan jam. Jadi Kesimpulanya , iPhone 7 terasa lebih menawan dengan adanya pilihan warna hitam. Smartphone ini juga punya kinerja super kencang untuk kebutuhan apapun. Kameranya juga lebih baik, meski kualitasnya secara keseluruhan tidak begitu berbeda. Namun bagi kami, apa yang ditawarkan Apple melalui iPhone 7 rasanya masih agak nanggung sehingga para pengguna iPhone 6 atau iPhone 6s belum perlu upgrade tahun ini.', 'iphone-7-droidlime-03.jpg', '2017-01-02 13:48:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
