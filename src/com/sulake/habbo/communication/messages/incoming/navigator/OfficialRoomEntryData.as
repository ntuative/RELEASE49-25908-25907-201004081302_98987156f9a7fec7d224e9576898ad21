package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1264:int = 4;
      
      public static const const_586:int = 3;
      
      public static const const_529:int = 2;
      
      public static const const_873:int = 1;
       
      
      private var var_2079:String;
      
      private var _disposed:Boolean;
      
      private var var_1953:int;
      
      private var var_2083:Boolean;
      
      private var var_781:String;
      
      private var var_879:PublicRoomData;
      
      private var var_2081:int;
      
      private var _index:int;
      
      private var var_2082:String;
      
      private var _type:int;
      
      private var var_1759:String;
      
      private var var_878:GuestRoomData;
      
      private var var_2080:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2079 = param1.readString();
         var_2080 = param1.readString();
         var_2083 = param1.readInteger() == 1;
         var_2082 = param1.readString();
         var_781 = param1.readString();
         var_2081 = param1.readInteger();
         var_1953 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_873)
         {
            var_1759 = param1.readString();
         }
         else if(_type == const_586)
         {
            var_879 = new PublicRoomData(param1);
         }
         else if(_type == const_529)
         {
            var_878 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2081;
      }
      
      public function get popupCaption() : String
      {
         return var_2079;
      }
      
      public function get userCount() : int
      {
         return var_1953;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2083;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_873)
         {
            return 0;
         }
         if(this.type == const_529)
         {
            return this.var_878.maxUserCount;
         }
         if(this.type == const_586)
         {
            return this.var_879.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2080;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_878 != null)
         {
            this.var_878.dispose();
            this.var_878 = null;
         }
         if(this.var_879 != null)
         {
            this.var_879.dispose();
            this.var_879 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_878;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2082;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_879;
      }
      
      public function get picRef() : String
      {
         return var_781;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1759;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
