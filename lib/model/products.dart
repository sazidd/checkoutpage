class Products {
  final int id;
  final String address;
  final String detailAddress;
  final String productName;
  final productDetails;
  final int productPrice;
  final int productOldPrice;
  final String productOffer;
  final String productImage;
  final int shippingFee;
  final int qty;

  Products({
    this.id,
    this.address,
    this.detailAddress,
    this.productName,
    this.productDetails,
    this.productPrice,
    this.productOldPrice,
    this.productOffer,
    this.productImage,
    this.shippingFee,
    this.qty,
  });
}

List<Products> products = [
  Products(
    id: 1,
    address: "Home Delivery",
    detailAddress: "Est.Arrival: 13-18 Oct",
    productName: "USB Type-C Data and Charging Cable",
    productDetails: "Samsung, Color Family",
    productPrice: 190,
    productOldPrice: 350,
    productOffer: "-46%",
    productImage: "assets/images/usb.jpg",
    shippingFee: 65,
    qty: 1,
  ),
  Products(
    id: 2,
    address: "Office Delivery",
    detailAddress: "Est.Arrival: 15-18 Oct",
    productName: "Ear Phone",
    productDetails: "AKG, Color Black",
    productPrice: 250,
    productOldPrice: 300,
    productOffer: "-20%",
    productImage: "assets/images/earphone.jpg",
    shippingFee: 75,
    qty: 1,
  ),
];
