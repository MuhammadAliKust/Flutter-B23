void main(){
  String customerName = "Ali";
  String shopName = "Ali General Store";
  String date = "3rd July, 2025";


  ///Products Quantity Variables
  int gheeQuantity = 3;
  int sugarQuantity = 5;
  int ilaichiQuantity = 1;


  ///Product Price Variables
  int gheePrice = 450;
  int sugarPrice = 200;
  int ilaichiPrice = 800;



  ///Calculation of Total Prices
  int gheeTotal = gheePrice * gheeQuantity;
  int sugarTotal = sugarPrice * sugarQuantity;
  int ilaichiTotal = ilaichiPrice * ilaichiQuantity;

  int totalPrice = gheeTotal + sugarTotal + ilaichiTotal;
  double gstPrice = totalPrice*0.18;
  print("---------------------------------------------");
  print("---------------------$customerName---------------------");
  print("------------$shopName----------------");
  print("------------Date: $date-------------");
  print("---------------------------------------------");
  print("Sr       Name        Qty      Price     Total");
  print("1        Ghee        $gheeQuantity        $gheePrice       $gheeTotal");
  print("2        Sugar       $sugarQuantity        $sugarPrice       $sugarTotal");
  print("3        Ilaichi     $ilaichiQuantity        $ilaichiPrice       $ilaichiTotal");
  print("---------------------------------------------");
  print("Total Price: $totalPrice");
  print("GST Price: $gstPrice");
  print("Total Payable: ${totalPrice + gstPrice}");
  print("---------------------------------------------");
  print("Thanks for shopping here");
  print("---------------------------------------------");

}