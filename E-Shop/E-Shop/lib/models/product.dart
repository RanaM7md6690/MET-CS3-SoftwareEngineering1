class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.image});
}

// List Of Products
List<Product> products = [
  Product(
    id: 1,
    price: 400,
    title: 'Airpods',
    subTitle: 'High sound quality',
    image: 'images/airpod.png',
    description:
        'lorem ipsum dollar set amet,contractor adaiba iasking allite,set du iosmud tempor ankyedionteute labor at dollar magna aliquia.',
  ),
  Product(
    id: 2,
    price: 3600,
    title: 'Mobile',
    subTitle: 'This is the best mobile',
    image: 'images/mobile.png',
    description:
        'lorem ipsum dollar set amet,contractor adaiba iasking allite,set du iosmud tempor ankyedionteute labor at dollar magna aliquia.',
  ),
  Product(
    id: 3,
    price: 1050,
    title: '3D glasses',
    subTitle: 'To take you to the virtual world',
    image: 'images/glasses.png',
    description:
        'lorem ipsum dollar set amet,contractor adaiba iasking allite,set du iosmud tempor ankyedionteute labor at dollar magna aliquia.',
  ),
  Product(
    id: 4,
    price: 450,
    title: 'headphones',
    subTitle: 'Listen for long hours',
    image: 'images/headset.png',
    description:
        'lorem ipsum dollar set amet,contractor adaiba iasking allite,set du iosmud tempor ankyedionteute labor at dollar magna aliquia.',
  ),
  Product(
    id: 5,
    price: 250,
    title: 'Voice Recorder',
    subTitle: 'Momentary audio recorder',
    image: 'images/speaker.png',
    description:
        'lorem ipsum dollar set amet,contractor adaiba iasking allite,set du iosmud tempor ankyedionteute labor at dollar magna aliquia.',
  ),
  Product(
    id: 6,
    price: 5000,
    title: 'Camera',
    subTitle: 'High quality and resolution image',
    image: 'images/camera.png',
    description:
        'lorem ipsum dollar set amet,contractor adaiba iasking allite,set du iosmud tempor ankyedionteute labor at dollar magna aliquia.',
  ),
];
