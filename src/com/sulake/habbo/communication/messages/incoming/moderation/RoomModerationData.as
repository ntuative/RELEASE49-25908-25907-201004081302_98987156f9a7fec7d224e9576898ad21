package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_113:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1953:int;
      
      private var var_410:int;
      
      private var var_750:RoomData;
      
      private var var_1779:int;
      
      private var _ownerName:String;
      
      private var var_2072:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_410 = param1.readInteger();
         var_1953 = param1.readInteger();
         var_2072 = param1.readBoolean();
         var_1779 = param1.readInteger();
         _ownerName = param1.readString();
         var_113 = new RoomData(param1);
         var_750 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1953;
      }
      
      public function get event() : RoomData
      {
         return var_750;
      }
      
      public function get room() : RoomData
      {
         return var_113;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_113 != null)
         {
            var_113.dispose();
            var_113 = null;
         }
         if(var_750 != null)
         {
            var_750.dispose();
            var_750 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_410;
      }
      
      public function get ownerId() : int
      {
         return var_1779;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2072;
      }
   }
}
