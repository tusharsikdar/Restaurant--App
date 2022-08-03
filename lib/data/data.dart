// Food
import 'package:restaurent_app/models/food.dart';
import 'package:restaurent_app/models/order.dart';
import 'package:restaurent_app/models/restaurant.dart';
import 'package:restaurent_app/models/user.dart';

final _burrito =
Food(imageUrl: 'assets/images/burrito.jpeg', name: 'Burrito', price: 8.99);
final _steak =
Food(imageUrl: 'assets/images/steak.jpeg', name: 'Steak', price: 17.99);
final _pasta =
Food(imageUrl: 'assets/images/pasta.jpeg', name: 'Pasta', price: 14.99);
final _ramen =
Food(imageUrl: 'assets/images/ramen.jpeg', name: 'Ramen', price: 13.99);
final _pancakes =
Food(imageUrl: 'assets/images/pancakes.jpeg', name: 'Pancakes', price: 9.99);
final _burger =
Food(imageUrl: 'assets/images/burger.jpeg', name: 'Burger', price: 14.99);
final _pizza =
Food(imageUrl: 'assets/images/pizza.jpeg', name: 'Pizza', price: 11.99);
final _salmon = Food(
    imageUrl: 'assets/images/salmon.jpeg', name: 'Salmon Salad', price: 12.99);

// Restaurants
final _restaurant0 = Restaurant(
  imageUrl: 'assets/images/restaurant0.jpeg',
  name: 'Restaurant 0',
  address: 'Dhanmondi, Dhaka, BD',
  rating: 5,
  menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant1 = Restaurant(
  imageUrl: 'assets/images/restaurant1.jpeg',
  name: 'Restaurant 1',
  address: 'Mirpur, Dhaka, BD',
  rating: 4,
  menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant2 = Restaurant(
  imageUrl: 'assets/images/restaurant2.jpeg',
  name: 'Restaurant 2',
  address: 'Gulsan, Dhaka, DB',
  rating: 4,
  menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant3 = Restaurant(
  imageUrl: 'assets/images/restaurant3.jpeg',
  name: 'Restaurant 3',
  address: 'Kakrail, Dhaka, BD',
  rating: 2,
  menu: [_burrito, _steak, _burger, _pizza, _salmon],
);
final _restaurant4 = Restaurant(
  imageUrl: 'assets/images/restaurant4.jpeg',
  name: 'Restaurant 4',
  address: 'Firmgate, Dhaka, BD',
  rating: 3,
  menu: [_burrito, _ramen, _pancakes, _salmon],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = User(
  name: 'Rebecca',
  orders: [
    Order(
      date: 'Nov 10, 2019',
      food: _steak,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2019',
      food: _ramen,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Nov 5, 2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Nov 2, 2019',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1, 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 11, 2019',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);