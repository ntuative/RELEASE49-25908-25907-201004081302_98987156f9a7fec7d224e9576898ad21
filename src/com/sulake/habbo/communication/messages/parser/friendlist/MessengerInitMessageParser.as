package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2341:int;
      
      private var var_2343:int;
      
      private var var_87:Array;
      
      private var var_238:Array;
      
      private var var_2342:int;
      
      private var var_2340:int;
      
      private var var_2338:int;
      
      private var var_2339:int;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_87 = new Array();
         this.var_238 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2341;
      }
      
      public function get friends() : Array
      {
         return this.var_238;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2342;
      }
      
      public function get categories() : Array
      {
         return this.var_87;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2343;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2339;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2339 = param1.readInteger();
         this.var_2342 = param1.readInteger();
         this.var_2341 = param1.readInteger();
         this.var_2338 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_87.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_238.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2343 = param1.readInteger();
         this.var_2340 = param1.readInteger();
         return true;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2338;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2340;
      }
   }
}
