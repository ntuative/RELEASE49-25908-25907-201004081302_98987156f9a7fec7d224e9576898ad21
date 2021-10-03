package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1262:String = "door";
      
      public static const const_450:String = "window";
      
      public static const const_637:String = "RORMUM_ADD_MASK";
      
      public static const const_464:String = "RORMUM_ADD_MASK";
      
      public static const const_197:String = "hole";
       
      
      private var var_1811:String = "";
      
      private var var_1810:String = "";
      
      private var var_1813:String = "window";
      
      private var var_1812:Vector3d = null;
      
      private var _type:String = "";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         _type = param1;
         var_1810 = param2;
         var_1811 = param3;
         if(param4 != null)
         {
            var_1812 = new Vector3d(param4.x,param4.y,param4.z);
         }
         var_1813 = param5;
      }
      
      public function get maskCategory() : String
      {
         return var_1813;
      }
      
      public function get maskId() : String
      {
         return var_1810;
      }
      
      public function get maskLocation() : IVector3d
      {
         return var_1812;
      }
      
      public function get maskType() : String
      {
         return var_1811;
      }
      
      public function get type() : String
      {
         return _type;
      }
   }
}
