package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_117:DisplayObject;
      
      private var var_2344:uint;
      
      private var var_921:IWindowToolTipAgentService;
      
      private var var_920:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_919:IWindowFocusManagerService;
      
      private var var_923:IWindowMouseListenerService;
      
      private var var_922:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2344 = 0;
         var_117 = param2;
         _windowContext = param1;
         var_922 = new WindowMouseDragger(param2);
         var_920 = new WindowMouseScaler(param2);
         var_923 = new WindowMouseListener(param2);
         var_919 = new FocusManager(param2);
         var_921 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_920;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_919;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_921;
      }
      
      public function dispose() : void
      {
         if(var_922 != null)
         {
            var_922.dispose();
            var_922 = null;
         }
         if(var_920 != null)
         {
            var_920.dispose();
            var_920 = null;
         }
         if(var_923 != null)
         {
            var_923.dispose();
            var_923 = null;
         }
         if(var_919 != null)
         {
            var_919.dispose();
            var_919 = null;
         }
         if(var_921 != null)
         {
            var_921.dispose();
            var_921 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_923;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_922;
      }
   }
}
