package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_240:String = "RWFAM_MOVE";
      
      public static const const_607:String = "RWFUAM_ROTATE";
      
      public static const const_504:String = "RWFAM_PICKUP";
       
      
      private var var_1884:int = 0;
      
      private var var_1981:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1884 = param2;
         var_1981 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1884;
      }
      
      public function get furniCategory() : int
      {
         return var_1981;
      }
   }
}
