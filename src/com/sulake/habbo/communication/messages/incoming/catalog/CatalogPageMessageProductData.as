package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_218:String = "e";
      
      public static const const_82:String = "i";
      
      public static const const_80:String = "s";
       
      
      private var var_1043:String;
      
      private var var_1270:String;
      
      private var var_1269:int;
      
      private var var_1719:int;
      
      private var var_1044:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1270 = param1.readString();
         var_1719 = param1.readInteger();
         var_1043 = param1.readString();
         var_1044 = param1.readInteger();
         var_1269 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1044;
      }
      
      public function get productType() : String
      {
         return var_1270;
      }
      
      public function get expiration() : int
      {
         return var_1269;
      }
      
      public function get furniClassId() : int
      {
         return var_1719;
      }
      
      public function get extraParam() : String
      {
         return var_1043;
      }
   }
}
