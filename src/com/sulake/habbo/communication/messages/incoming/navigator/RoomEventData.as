package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1625:String;
      
      private var var_410:int;
      
      private var var_1623:String;
      
      private var var_1622:String;
      
      private var var_1627:int;
      
      private var var_1626:String;
      
      private var var_1624:int;
      
      private var var_636:Array;
      
      private var var_1085:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_636 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1085 = false;
            return;
         }
         this.var_1085 = true;
         var_1627 = int(_loc2_);
         var_1623 = param1.readString();
         var_410 = int(param1.readString());
         var_1624 = param1.readInteger();
         var_1625 = param1.readString();
         var_1622 = param1.readString();
         var_1626 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_636.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1624;
      }
      
      public function get eventName() : String
      {
         return var_1625;
      }
      
      public function get eventDescription() : String
      {
         return var_1622;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1623;
      }
      
      public function get tags() : Array
      {
         return var_636;
      }
      
      public function get creationTime() : String
      {
         return var_1626;
      }
      
      public function get exists() : Boolean
      {
         return var_1085;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1627;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_410;
      }
   }
}
