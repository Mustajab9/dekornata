// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title, description;
  final List<String> images;
  final String gambar;
  final double rating, price;
  final bool isFavourite, isPopular;

  const Product({
    required this.id,
    required this.images,
    required this.rating,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.gambar,
    required this.description,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        images,
        rating,
        price,
        isFavourite,
        isPopular,
        gambar
      ];

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      id: snap['id'],
      images: snap['images'],
      rating: snap['rating'],
      title: snap['title'],
      price: snap['price'],
      gambar: snap['gambar'],
      description: snap['description'],
      isFavourite: snap['isFavourite'],
      isPopular: snap['isPopular'],
    );
    return product;
  }

  static List<Product> demoProducts = [
    Product(
      id: 1,
      gambar:
          'https://asset.dekornata.com/image/variant/original/dekornata-ash-tissue-box-tempat-tissue-panjang-kotak-tisu-rotan-ash-tissue-box-1633581108589.jpeg',
      images: [
        "assets/images/Tempat Tissue 1.png",
        "assets/images/Tempat Tissue 2.png",
        "assets/images/Tempat Tissue 3.png",
        "assets/images/Tempat Tissue 4.png",
      ],
      title: "Dekornata Ash Tissue Box™",
      price: 105000,
      description:
          'Presenting a brand new rattan tissue box from us, we called her Zoey! Just like her sister (Zoe), Zoey Tissue Box was made from the finest rattan materials. And yes, she can be super durable but still pretty at the same time. Well, it’s both the pair we’re looking for, right? \nMencari tempat tissue yang cocok dengan berbagai gaya dekorasi? Zoey Tissue Box jawabannya! Zoey Tissue Box tak hanya bisa dijadikan sebagai tempat tissue namun juga sebagai pelengkap dekorasi. Tempat tissue Zoey terbuat dari bahan rotan yang dirangkai handmade oleh pengrajin lokal kami. Memiliki dimensi panjang membuat tempat tissue Zoey lebih elegan. Coba dan miliki kotak tisu rotan Zoey Tissue Box untuk lengkapi dekorasi rumah mu!',
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Product(
      id: 2,
      gambar:
          'https://asset.dekornata.com/image/variant/original/ciel-cutting-board-serving-board-tatakan-kayu-talenan-saji-kayu-ciel-cutting-board-1627381939964.jpeg',
      images: [
        "assets/images/Tatakan Saji 1.png",
        "assets/images/Tatakan Saji 2.png",
        "assets/images/Tatakan Saji 3.png",
      ],
      title: "Ciel Cutting Board",
      price: 70000,
      description:
          'Ciel is a unique serving board. It is passionately crafted by local craftsman then it is finished with food-grade wax so that it will be safe when comes into direct contact with food. What would you like to cook for dinner today? Steak? Burger? This will be the right serving board for you.',
      rating: 4.1,
      isPopular: true,
    ),
    Product(
      id: 3,
      gambar:
          'https://asset.dekornata.com/image/variant/original/caca-coaster-tatakan-gelas-coaster-kayu-caca-1627229587830.jpeg',
      images: [
        "assets/images/Tatakan Gelas 1.png",
        "assets/images/Tatakan Gelas 2.png",
        "assets/images/Tatakan Gelas 3.png",
      ],
      title: "Caca Coaster - Tatakan Gelas",
      price: 12000,
      description:
          'A cup of coffee in the morning or a glass of iced lemon tea in the afternoon? Two perfect drinks for the right occasion. However, have your favorite table surface protected from those drinks. With minimalistic design and simple appearance, it will protect any surfaces and guards against unwanted spillage. Let it sit on your surface and elegantly protect your surfaces!',
      rating: 4.1,
      isFavourite: true,
      isPopular: true,
    ),
    Product(
      id: 4,
      gambar:
          "https://asset.dekornata.com/image/variant/original/arianne-headboard-dipan-tempat-tidur-tempat-tidur-tempat-tidur-anak-160-x-200-1618126504450.jpeg",
      images: [
        "assets/images/Kasur 1.png",
        "assets/images/Kasur 2.png",
        "assets/images/Kasur 3.png",
      ],
      title: "Arianne Headboard / Dipan Tempat Tidur",
      price: 3250000,
      description:
          'Your bedroom shall be your golden room! Make it as comfortable as possible with the lovely Colley Headboard. This one is made from breathable fabric materials that surely will make you feel super cozy!\nKamar tidur harus menjadi highlight dalam rumah! Buat waktu istirahatmu nyaman dengan dipan tempat tidur Colley Headboard, dibuat untuk tempat tidur orang dewasa maupun tempat tidur anak, semuanya bisa. Wahhh, super nyaman!\nGRATIS ONGKIR UNTUK WILAYAH JABODETABEK',
      rating: 4.1,
      isPopular: true,
    ),
    Product(
      id: 5,
      gambar:
          "https://asset.dekornata.com/image/variant/original/arianne-headboard-dipan-tempat-tidur-tempat-tidur-tempat-tidur-anak-160-x-200-1618126504450.jpeg",
      images: [
        "assets/images/Kasur 1.png",
        "assets/images/Kasur 2.png",
        "assets/images/Kasur 3.png",
      ],
      title: "Arianne Headboard / Dipan Tempat Tidur",
      price: 3250000,
      description:
          'Your bedroom shall be your golden room! Make it as comfortable as possible with the lovely Colley Headboard. This one is made from breathable fabric materials that surely will make you feel super cozy!\nKamar tidur harus menjadi highlight dalam rumah! Buat waktu istirahatmu nyaman dengan dipan tempat tidur Colley Headboard, dibuat untuk tempat tidur orang dewasa maupun tempat tidur anak, semuanya bisa. Wahhh, super nyaman!\nGRATIS ONGKIR UNTUK WILAYAH JABODETABEK',
      rating: 4.1,
      isPopular: true,
    ),
    Product(
      id: 6,
      gambar:
          "https://asset.dekornata.com/image/variant/original/arianne-headboard-dipan-tempat-tidur-tempat-tidur-tempat-tidur-anak-160-x-200-1618126504450.jpeg",
      images: [
        "assets/images/Kasur 1.png",
        "assets/images/Kasur 2.png",
        "assets/images/Kasur 3.png",
      ],
      title: "Arianne Headboard / Dipan Tempat Tidur",
      price: 3250000,
      description:
          'Your bedroom shall be your golden room! Make it as comfortable as possible with the lovely Colley Headboard. This one is made from breathable fabric materials that surely will make you feel super cozy!\nKamar tidur harus menjadi highlight dalam rumah! Buat waktu istirahatmu nyaman dengan dipan tempat tidur Colley Headboard, dibuat untuk tempat tidur orang dewasa maupun tempat tidur anak, semuanya bisa. Wahhh, super nyaman!\nGRATIS ONGKIR UNTUK WILAYAH JABODETABEK',
      rating: 4.1,
      isPopular: true,
    ),
  ];
}
