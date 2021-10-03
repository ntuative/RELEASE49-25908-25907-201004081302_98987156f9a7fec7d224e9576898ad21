package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_693:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1869:int;
      
      private var var_1868:int;
      
      private var var_1870:Boolean;
      
      private var var_1036:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_693);
         var_1868 = param1;
         var_1869 = param2;
         _color = param3;
         var_1036 = param4;
         var_1870 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1869;
      }
      
      public function get presetNumber() : int
      {
         return var_1868;
      }
      
      public function get brightness() : int
      {
         return var_1036;
      }
      
      public function get apply() : Boolean
      {
         return var_1870;
      }
   }
}
