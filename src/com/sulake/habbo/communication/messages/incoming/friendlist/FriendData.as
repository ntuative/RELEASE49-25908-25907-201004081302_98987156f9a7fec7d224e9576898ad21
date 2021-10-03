package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_308:String;
      
      private var var_1302:String;
      
      private var var_1301:String;
      
      private var var_1125:int;
      
      private var var_754:int;
      
      private var var_1300:String;
      
      private var _name:String;
      
      private var var_1303:Boolean;
      
      private var var_722:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_754 = param1.readInteger();
         this.var_722 = param1.readBoolean();
         this.var_1303 = param1.readBoolean();
         this.var_308 = param1.readString();
         this.var_1125 = param1.readInteger();
         this.var_1301 = param1.readString();
         this.var_1302 = param1.readString();
         this.var_1300 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_754;
      }
      
      public function get realName() : String
      {
         return var_1300;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1301;
      }
      
      public function get categoryId() : int
      {
         return var_1125;
      }
      
      public function get online() : Boolean
      {
         return var_722;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1303;
      }
      
      public function get lastAccess() : String
      {
         return var_1302;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_308;
      }
   }
}
