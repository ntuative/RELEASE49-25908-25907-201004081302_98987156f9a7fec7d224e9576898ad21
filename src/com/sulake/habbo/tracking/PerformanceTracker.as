package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1540:GarbageMonitor = null;
      
      private var var_1297:int = 0;
      
      private var var_1199:Boolean = false;
      
      private var var_1858:String = "";
      
      private var var_1539:String = "";
      
      private var var_361:Number = 0;
      
      private var var_1295:int = 10;
      
      private var var_2330:Array;
      
      private var var_643:int = 0;
      
      private var var_1293:int = 60;
      
      private var var_1067:int = 0;
      
      private var var_1066:int = 0;
      
      private var var_1854:String = "";
      
      private var var_2103:Number = 0;
      
      private var var_1296:int = 1000;
      
      private var var_2104:Boolean = true;
      
      private var var_2102:Number = 0.15;
      
      private var var_151:IHabboConfigurationManager = null;
      
      private var var_1855:String = "";
      
      private var var_1294:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2330 = [];
         super();
         var_1539 = Capabilities.version;
         var_1858 = Capabilities.os;
         var_1199 = Capabilities.isDebugger;
         var_1855 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1540 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1297 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1540.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1540.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_361;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1293 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1539;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1066;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1296)
         {
            ++var_1067;
            _loc3_ = true;
         }
         else
         {
            ++var_643;
            if(var_643 <= 1)
            {
               var_361 = param1;
            }
            else
            {
               _loc4_ = Number(var_643);
               var_361 = var_361 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1297 > var_1293 * 1000 && var_1294 < var_1295)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_361);
            _loc5_ = true;
            if(var_2104 && var_1294 > 0)
            {
               _loc6_ = differenceInPercents(var_2103,var_361);
               if(_loc6_ < var_2102)
               {
                  _loc5_ = false;
               }
            }
            var_1297 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2103 = var_361;
               if(sendReport())
               {
                  ++var_1294;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1295 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1296 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1855,var_1539,var_1858,var_1854,var_1199,_loc4_,_loc3_,var_1066,var_361,var_1067);
            _connection.send(_loc1_);
            var_1066 = 0;
            var_361 = 0;
            var_643 = 0;
            var_1067 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_151 = param1;
         var_1293 = int(var_151.getKey("performancetest.interval","60"));
         var_1296 = int(var_151.getKey("performancetest.slowupdatelimit","1000"));
         var_1295 = int(var_151.getKey("performancetest.reportlimit","10"));
         var_2102 = Number(var_151.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2104 = Boolean(int(var_151.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
