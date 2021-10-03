package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_348:Number = 0.5;
      
      private static const const_773:int = 3;
      
      private static const const_1098:Number = 1;
       
      
      private var var_2093:Boolean = false;
      
      private var var_2088:Boolean = false;
      
      private var var_1061:int = 0;
      
      private var var_259:Vector3d = null;
      
      private var var_2091:int = 0;
      
      private var var_2089:int = 0;
      
      private var var_2087:Boolean = false;
      
      private var var_2095:int = -2;
      
      private var var_2090:Boolean = false;
      
      private var var_2096:int = 0;
      
      private var var_2094:int = -1;
      
      private var var_426:Vector3d = null;
      
      private var var_2092:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2091;
      }
      
      public function get targetId() : int
      {
         return var_2094;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2096 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2091 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2093 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2094 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2088 = param1;
      }
      
      public function dispose() : void
      {
         var_426 = null;
         var_259 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_426 == null)
         {
            var_426 = new Vector3d();
         }
         var_426.assign(param1);
         var_1061 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2095;
      }
      
      public function get screenHt() : int
      {
         return var_2092;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2089 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_259;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2092 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2096;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2093;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2088;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_426 != null && var_259 != null)
         {
            ++var_1061;
            _loc2_ = Vector3d.dif(var_426,var_259);
            if(_loc2_.length <= const_348)
            {
               var_259 = var_426;
               var_426 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_348 * (const_773 + 1))
               {
                  _loc2_.mul(const_348);
               }
               else if(var_1061 <= const_773)
               {
                  _loc2_.mul(const_348);
               }
               else
               {
                  _loc2_.mul(const_1098);
               }
               var_259 = Vector3d.sum(var_259,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2087 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2089;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2090 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2095 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_259 != null)
         {
            return;
         }
         var_259 = new Vector3d();
         var_259.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2087;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2090;
      }
   }
}
