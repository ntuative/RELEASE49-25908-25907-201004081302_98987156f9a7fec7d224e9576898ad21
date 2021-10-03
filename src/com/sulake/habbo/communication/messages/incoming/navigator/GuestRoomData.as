package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1953:int;
      
      private var var_1954:String;
      
      private var var_1957:int;
      
      private var var_1956:int;
      
      private var var_750:Boolean;
      
      private var var_1959:Boolean;
      
      private var var_410:int;
      
      private var var_1178:String;
      
      private var var_1960:int;
      
      private var var_1125:int;
      
      private var _ownerName:String;
      
      private var var_701:String;
      
      private var var_1958:int;
      
      private var var_1955:RoomThumbnailData;
      
      private var var_1961:Boolean;
      
      private var var_636:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_636 = new Array();
         super();
         var_410 = param1.readInteger();
         var_750 = param1.readBoolean();
         var_701 = param1.readString();
         _ownerName = param1.readString();
         var_1960 = param1.readInteger();
         var_1953 = param1.readInteger();
         var_1958 = param1.readInteger();
         var_1178 = param1.readString();
         var_1957 = param1.readInteger();
         var_1961 = param1.readBoolean();
         var_1956 = param1.readInteger();
         var_1125 = param1.readInteger();
         var_1954 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_636.push(_loc4_);
            _loc3_++;
         }
         var_1955 = new RoomThumbnailData(param1);
         var_1959 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1958;
      }
      
      public function get roomName() : String
      {
         return var_701;
      }
      
      public function get userCount() : int
      {
         return var_1953;
      }
      
      public function get score() : int
      {
         return var_1956;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1954;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1961;
      }
      
      public function get tags() : Array
      {
         return var_636;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1959;
      }
      
      public function get event() : Boolean
      {
         return var_750;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_636 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1125;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1957;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1955;
      }
      
      public function get doorMode() : int
      {
         return var_1960;
      }
      
      public function get flatId() : int
      {
         return var_410;
      }
      
      public function get description() : String
      {
         return var_1178;
      }
   }
}
