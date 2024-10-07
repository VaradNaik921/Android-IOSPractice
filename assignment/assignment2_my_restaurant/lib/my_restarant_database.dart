class MyRestaurantDatabase{
  
  Map<String, dynamic> findMenuById(int id){
    return menus[id];
  }

  Map<int, dynamic> menus = {
    1: {
      "id":1, 
      "name":'Margherita Pizza',
      "currency": 'Rs',
      "price": 99.00,
      "categoryId": 1,
    },
    2: {
      "id":2, 
      "name":'Corn Cheese Pizza',
      "currency": 'Rs',
      "price": 120.00,
      "categoryId": 1,
    },
    3: {
      "id":3, 
      "name":'Red Sauce Pasta',
      "currency": 'Rs',
      "price": 90.00,
      "categoryId": 2,
    },
    4: {
      "id":4, 
      "name":'White Sauce Pasta',
      "currency": 'Rs',
      "price": 119.00,
      "categoryId": 2,
    },
    5: {
      "id":5, 
      "name":'Aglio Olio',
      "currency": 'Rs',
      "price": 100.00,
      "categoryId": 2,
    },
  6: {
      "id":6, 
      "name":'Coffee',
      "currency": 'Rs',
      "price": 50.00,
      "categoryId": 3,
    },
  7: {
      "id": 7,
      "name": 'Mango Smoothie',
      "currency": 'Rs',
      "price": 80.00,
      "categoryId": 3,
    },
  8: {
      "id": 8,
      "name": 'Paneer Tikka',
      "currency": 'Rs',
      "price": 180.00,
      "categoryId": 4,
    },
  9: {
      "id": 9,
      "name": 'Dal Makhani',
      "currency": 'Rs',
      "price": 150.00,
      "categoryId": 4,
    },
  };
  Map<int, dynamic> categories ={
    1:{
      "id":1,
      "name":"Pizza",
      "description":
        "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature",
    },
    2:{
      "id":2,
      "name":"Pasta",
      "description":"",
    },
    3:{
      "id":3,
      "name":"Drink",
      "description":"",
    },
    4:{
      "id":4,
      "name":"Indian Main Course",
      "description":"",
    }
  };
}