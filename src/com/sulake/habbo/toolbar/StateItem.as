package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1206:Boolean;
      
      private var var_2008:String;
      
      private var _frames:XMLList;
      
      private var var_1083:String = "-1";
      
      private var var_635:String;
      
      private var var_173:int = 120;
      
      private var var_1252:String = "-1";
      
      private var var_1251:String;
      
      private var var_2009:Boolean;
      
      private var var_1491:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1206 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_2009 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_173 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1251 = param1.@namebase;
         }
         else
         {
            var_1251 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1083 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1252 = param1.@nextState;
         }
         else
         {
            var_1252 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1491 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_2008 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_635 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1083 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_2009;
      }
      
      public function get defaultState() : String
      {
         return var_1491;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1491 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_2008;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_173;
      }
      
      public function get loop() : Boolean
      {
         return var_1206;
      }
      
      public function get nextState() : String
      {
         return var_1252;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_635;
      }
      
      public function get stateOver() : String
      {
         return var_1083;
      }
      
      public function get nameBase() : String
      {
         return var_1251;
      }
   }
}
