package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1312:int;
      
      private var var_1030:String;
      
      private var var_662:Array;
      
      private var var_1039:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_662.slice();
      }
      
      public function flush() : Boolean
      {
         var_1030 = "";
         var_1039 = [];
         var_662 = [];
         var_1312 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1312;
      }
      
      public function get question() : String
      {
         return var_1030;
      }
      
      public function get choices() : Array
      {
         return var_1039.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1030 = param1.readString();
         var_1039 = [];
         var_662 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1039.push(param1.readString());
            var_662.push(param1.readInteger());
            _loc3_++;
         }
         var_1312 = param1.readInteger();
         return true;
      }
   }
}
