package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_113:String = "RWPUE_VOTE_RESULT";
      
      public static const const_126:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1312:int;
      
      private var var_1030:String;
      
      private var var_662:Array;
      
      private var var_1039:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1030 = param2;
         var_1039 = param3;
         var_662 = param4;
         if(var_662 == null)
         {
            var_662 = [];
         }
         var_1312 = param5;
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
