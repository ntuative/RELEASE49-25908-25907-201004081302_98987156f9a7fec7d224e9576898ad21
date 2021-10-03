package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_805:String = "select_outfit";
       
      
      private var var_2239:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_805);
         var_2239 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2239;
      }
   }
}
