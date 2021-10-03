package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_149:int;
      
      private var var_236:int = 0;
      
      private var _roomId:int;
      
      private var var_79:int = 0;
      
      private var _y:int = 0;
      
      private var var_1686:int;
      
      private var var_1715:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_149 = param1;
         var_1686 = param2;
         var_1715 = param3;
         var_79 = param4;
         _y = param5;
         var_236 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_1686)
         {
            case RoomObjectCategoryEnum.const_31:
               return [var_149 + " " + var_79 + " " + _y + " " + var_236];
            case RoomObjectCategoryEnum.const_29:
               return [var_149 + " " + var_1715];
            default:
               return [];
         }
      }
   }
}
