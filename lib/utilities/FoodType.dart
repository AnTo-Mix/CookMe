class FoodType {
  String foodName, mainImage, img1, img2, img3, img4;
  String foodTitle, foodTitleDesc, foodCat1, foodCat2, foodCat3, foodCat4;
  String price1, price2, price3, price4;

  FoodType({this.foodName});

  void updateDetails(String foodType) {
    if (foodType == 'BURGER') {
      mainImage = 'images/burger_1.jpg';
      img1 = 'images/burger_1.jpg';
      img2 = 'images/burger_2.jpg';
      img3 = 'images/burger_3.jpg';
      img4 = 'images/burger_4.jpg';
      foodTitle = 'Mouthwatering burgers.';
      foodTitleDesc = 'Choose your weapon wisely';
      foodCat1 = 'Mighty Burger';
      price1 = '8\$';
      foodCat2 = 'Cheesy Cheese';
      price2 = '12\$';
      foodCat3 = 'Double Trouble';
      price3 = '15\$';
      foodCat4 = 'Spicy Beef';
      price4 = '18\$';
    } else if (foodType == 'PIZZA') {
      mainImage = 'images/pizza_3.jpg';
      img1 = 'images/pizza_1.jpg';
      img2 = 'images/pizza_2.jpg';
      img3 = 'images/pizza_3.jpg';
      img4 = 'images/pizza_4.jpg';
      foodTitle = ' Pizza Makes Anything Possible.';
      foodTitleDesc = 'Every flavor has a reason.';
      foodCat1 = 'Crusty Cream';
      price1 = '12\$';
      foodCat2 = 'Very Veggie';
      price2 = '16\$';
      foodCat3 = 'Pepperoni';
      price3 = '18\$';
      foodCat4 = 'The Original';
      price4 = '8\$';
    } else if (foodType == 'SALAD') {
      mainImage = 'images/salad_1.jpg';
      img1 = 'images/salad_1.jpg';
      img2 = 'images/salad_2.jpg';
      img3 = 'images/salad_3.jpg';
      img4 = 'images/salad_4.jpg';
      foodTitle = 'You\'l only think about salad.';
      foodTitleDesc = 'A salad you can wrap your hands around.';
      foodCat1 = 'Caesar salad';
      price1 = '6\$';
      foodCat2 = 'Garden salad';
      price2 = '8\$';
      foodCat3 = 'Panzanella';
      price3 = '12\$';
      foodCat4 = 'Ketto Broccoli';
      price4 = '6\$';
    } else {
      mainImage = 'images/dessert_1.jpg';
      img1 = 'images/dessert_1.jpg';
      img2 = 'images/dessert_2.jpg';
      img3 = 'images/dessert_3.jpg';
      img4 = 'images/dessert_4.jpg';
      foodTitle = 'Baked fresh for you.';
      foodTitleDesc = 'A cake so yummy, it will fill your tummy.';
      foodCat1 = 'Cheesecake';
      price1 = '4\$';
      foodCat2 = 'Macaroon';
      price2 = '8\$';
      foodCat3 = 'Mont Blanc';
      price3 = '5\$';
      foodCat4 = 'Religieuse';
      price4 = '6\$';
    }
  }
}
