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
      "name":'Aglio Oglio',
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
    }
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
    }
  };
}