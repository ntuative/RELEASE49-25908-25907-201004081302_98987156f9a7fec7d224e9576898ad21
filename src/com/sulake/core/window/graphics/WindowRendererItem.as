package com.sulake.core.window.graphics
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowStyle;
   import com.sulake.core.window.graphics.renderer.ISkinRenderer;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowRendererItem implements IDisposable
   {
      
      private static const const_482:uint = 0;
      
      private static const const_743:uint = 1;
      
      private static const const_744:uint = 2;
       
      
      private var var_646:ISkinContainer;
      
      private var _drawBufferAllocator:DrawBufferAllocator;
      
      private var _disposed:Boolean;
      
      private var var_213:Rectangle;
      
      private var var_212:Boolean;
      
      private var var_89:BitmapData;
      
      private var var_945:Matrix;
      
      private var var_128:WindowRenderer;
      
      private var var_964:uint;
      
      private var _colorTransform:ColorTransform;
      
      private var var_647:uint;
      
      public function WindowRendererItem(param1:WindowRenderer, param2:DrawBufferAllocator, param3:ISkinContainer)
      {
         super();
         _disposed = false;
         var_128 = param1;
         var_646 = param3;
         _drawBufferAllocator = param2;
         var_964 = 4294967295;
         var_647 = 0;
         _colorTransform = new ColorTransform();
         var_945 = new Matrix();
         var_213 = new Rectangle();
      }
      
      public function get buffer() : BitmapData
      {
         return var_89;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var _loc4_:Boolean = false;
         switch(param3)
         {
            case WindowRedrawFlag.const_73:
               var_212 = true;
               _loc4_ = true;
               break;
            case WindowRedrawFlag.RESIZE:
               var_212 = true;
               _loc4_ = true;
               break;
            case WindowRedrawFlag.const_476:
               if(param1.testParamFlag(WindowParam.const_32))
               {
                  _loc4_ = true;
               }
               else
               {
                  IGraphicContextHost(param1).getGraphicContext(true).setDrawRegion(param1.rectangle,false);
               }
               break;
            case WindowRedrawFlag.const_920:
               var_647 = var_646.getTheActualState(param1.type,param1.style,param1.state);
               if(var_647 != var_964)
               {
                  var_212 = true;
                  _loc4_ = true;
               }
               break;
            case WindowRedrawFlag.const_877:
               if(param1.testParamFlag(WindowParam.const_32))
               {
                  var_212 = true;
                  _loc4_ = true;
               }
               else
               {
                  IGraphicContextHost(param1).getGraphicContext(true).blend = param1.blend;
               }
               break;
            case WindowRedrawFlag.const_252:
               _loc4_ = true;
         }
         if(_loc4_)
         {
            var_213.left = Math.min(var_213.left,param2.left);
            var_213.top = Math.min(var_213.top,param2.top);
            var_213.right = Math.max(var_213.right,param2.right);
            var_213.bottom = Math.max(var_213.bottom,param2.bottom);
         }
         return _loc4_;
      }
      
      public function testForStateChange(param1:IWindow) : Boolean
      {
         return var_646.getTheActualState(param1.type,param1.style,param1.state) != var_964;
      }
      
      public function get dirty() : Rectangle
      {
         return var_213;
      }
      
      public function render(param1:IWindow, param2:Point, param3:Rectangle) : Boolean
      {
         var _loc4_:* = null;
         var _loc11_:* = 0;
         var _loc5_:uint = !!param1.background ? uint(const_744) : uint(const_482);
         var _loc7_:ISkinRenderer = resolveSkinRenderer(param1);
         if(_loc7_ != null)
         {
            if(_loc7_.isStateDrawable(var_647))
            {
               _loc5_ = const_743;
            }
         }
         var _loc8_:int = Math.max(param1.width,1);
         var _loc9_:int = Math.max(param1.height,1);
         if(_loc5_ != const_482)
         {
            if(var_89 == null)
            {
               var_89 = _drawBufferAllocator.allocate(_loc8_,_loc9_,true,param1.color);
               var_212 = true;
            }
            else if(var_89.width != _loc8_ || var_89.height != _loc9_)
            {
               _drawBufferAllocator.free(var_89);
               var_89 = _drawBufferAllocator.allocate(_loc8_,_loc9_,true,param1.color);
               var_212 = true;
            }
         }
         var _loc10_:IGraphicContext = IGraphicContextHost(param1).getGraphicContext(false);
         if(_loc10_)
         {
            _loc10_.setDrawRegion(param1.rectangle,!param1.testParamFlag(WindowParam.const_32));
         }
         if(_loc5_ != const_482)
         {
            var_964 = var_647;
            _loc4_ = param1.fetchDrawBuffer() as BitmapData;
            if(_loc4_ != null)
            {
               _loc4_.lock();
               if(_loc5_ == const_743)
               {
                  if(!param1.testParamFlag(WindowParam.const_32))
                  {
                     _loc4_.fillRect(param3,0);
                  }
                  if(var_212)
                  {
                     var_212 = false;
                     var_89.fillRect(var_89.rect,param1.color);
                     _loc7_.draw(param1,var_89,var_89.rect,var_647,false);
                     if(!param1.background)
                     {
                        _loc11_ = uint(param1.color);
                        if((_loc11_ & 16777215) < 16777215)
                        {
                           var_89.colorTransform(_loc4_.rect,new ColorTransform(((_loc11_ & 16711680) >> 16) / 255,((_loc11_ & 65280) >> 8) / 255,(_loc11_ & 255) / 255));
                        }
                     }
                  }
                  if(param1.blend < 1 && param1.testParamFlag(WindowParam.const_32))
                  {
                     var_945.tx = param2.x;
                     var_945.ty = param2.y;
                     _colorTransform.alphaMultiplier = param1.blend;
                     param3.offset(param2.x,param2.y);
                     _loc4_.draw(var_89,var_945,_colorTransform,null,param3,false);
                     param3.offset(-param2.x,-param2.y);
                  }
                  else
                  {
                     _loc4_.copyPixels(var_89,param3,param2,null,null,true);
                  }
               }
               else if(_loc5_ == const_744)
               {
                  if(param1.testParamFlag(WindowParam.const_32))
                  {
                     var_89.fillRect(var_89.rect,param1.color);
                     _loc4_.copyPixels(var_89,param3,param2,null,null,true);
                  }
                  else
                  {
                     _loc4_.fillRect(new Rectangle(param2.x,param2.y,param3.width,param3.height),param1.color);
                     _loc10_.blend = param1.blend;
                  }
               }
               _loc4_.unlock();
            }
            var_213.left = int.MAX_VALUE;
            var_213.top = int.MAX_VALUE;
            var_213.right = int.MIN_VALUE;
            var_213.bottom = int.MIN_VALUE;
         }
         return true;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_128 = null;
            var_646 = null;
            if(var_89 != null)
            {
               _drawBufferAllocator.free(var_89);
               var_89 = null;
            }
         }
      }
      
      private function drawRect(param1:BitmapData, param2:Rectangle, param3:uint) : void
      {
         var _loc4_:int = 0;
         _loc4_ = param2.left;
         while(_loc4_ < param2.right)
         {
            param1.setPixel32(_loc4_,param2.top,param3);
            param1.setPixel32(_loc4_,param2.bottom - 1,param3);
            _loc4_++;
         }
         _loc4_ = param2.top;
         while(_loc4_ < param2.bottom)
         {
            param1.setPixel32(param2.left,_loc4_,param3);
            param1.setPixel32(param2.right - 1,_loc4_,param3);
            _loc4_++;
         }
      }
      
      private function resolveSkinRenderer(param1:IWindow) : ISkinRenderer
      {
         var _loc2_:ISkinRenderer = var_646.getSkinRendererByTypeAndStyle(param1.type,param1.style);
         if(_loc2_ == null)
         {
            if(param1.style != WindowStyle.const_886)
            {
               _loc2_ = var_646.getSkinRendererByTypeAndStyle(param1.type,WindowStyle.const_886);
            }
         }
         return _loc2_;
      }
   }
}
