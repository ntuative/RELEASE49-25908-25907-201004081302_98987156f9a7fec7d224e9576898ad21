package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1225:BigInteger;
      
      private var var_582:BigInteger;
      
      private var var_1480:BigInteger;
      
      private var var_1479:BigInteger;
      
      private var var_1926:BigInteger;
      
      private var var_1925:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1225 = param1;
         var_1480 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1926.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1479 = new BigInteger();
         var_1479.fromRadix(param1,param2);
         var_1926 = var_1479.modPow(var_582,var_1225);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1925.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1225.toString() + ",generator: " + var_1480.toString() + ",secret: " + param1);
         var_582 = new BigInteger();
         var_582.fromRadix(param1,param2);
         var_1925 = var_1480.modPow(var_582,var_1225);
         return true;
      }
   }
}
