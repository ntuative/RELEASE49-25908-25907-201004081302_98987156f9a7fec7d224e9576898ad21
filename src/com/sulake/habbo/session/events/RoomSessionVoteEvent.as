package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_113:String = "RSPE_VOTE_RESULT";
      
      public static const const_126:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1312:int = 0;
      
      private var var_1030:String = "";
      
      private var var_662:Array;
      
      private var var_1039:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1039 = [];
         var_662 = [];
         super(param1,param2,param7,param8);
         var_1030 = param3;
         var_1039 = param4;
         var_662 = param5;
         if(var_662 == null)
         {
            var_662 = [];
         }
         var_1312 = param6;
      }
      
      public function get votes() : Array
      {
         return var_662.slice();
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
   }
}
