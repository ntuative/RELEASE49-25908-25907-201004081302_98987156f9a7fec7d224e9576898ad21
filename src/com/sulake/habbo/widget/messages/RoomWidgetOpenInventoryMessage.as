package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_905:String = "inventory_badges";
      
      public static const const_1333:String = "inventory_clothes";
      
      public static const const_1387:String = "inventory_furniture";
      
      public static const const_635:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_894:String = "inventory_effects";
       
      
      private var var_1658:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_635);
         var_1658 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1658;
      }
   }
}
