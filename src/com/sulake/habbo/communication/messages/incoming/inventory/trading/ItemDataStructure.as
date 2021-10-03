package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1034:String;
      
      private var var_1716:int;
      
      private var var_2136:int;
      
      private var var_1552:int;
      
      private var var_2131:int;
      
      private var _category:int;
      
      private var var_2394:int;
      
      private var var_2133:int;
      
      private var var_2134:int;
      
      private var var_2135:int;
      
      private var var_2130:int;
      
      private var var_2132:Boolean;
      
      private var var_1383:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1716 = param1;
         var_1034 = param2;
         var_2136 = param3;
         var_2135 = param4;
         _category = param5;
         var_1383 = param6;
         var_1552 = param7;
         var_2134 = param8;
         var_2133 = param9;
         var_2130 = param10;
         var_2131 = param11;
         var_2132 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2135;
      }
      
      public function get extra() : int
      {
         return var_1552;
      }
      
      public function get stuffData() : String
      {
         return var_1383;
      }
      
      public function get groupable() : Boolean
      {
         return var_2132;
      }
      
      public function get creationMonth() : int
      {
         return var_2130;
      }
      
      public function get roomItemID() : int
      {
         return var_2136;
      }
      
      public function get itemType() : String
      {
         return var_1034;
      }
      
      public function get itemID() : int
      {
         return var_1716;
      }
      
      public function get songID() : int
      {
         return var_1552;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2134;
      }
      
      public function get creationYear() : int
      {
         return var_2131;
      }
      
      public function get creationDay() : int
      {
         return var_2133;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
