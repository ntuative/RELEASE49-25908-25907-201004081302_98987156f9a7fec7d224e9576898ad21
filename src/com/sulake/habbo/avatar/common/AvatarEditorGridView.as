package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class AvatarEditorGridView
   {
       
      
      private var _view:IWindowContainer;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_384:Array;
      
      private const const_1093:int = 2;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_1125:String;
      
      private var _model:IAvatarEditorCategoryModel;
      
      private var var_840:Boolean = true;
      
      private var var_458:IItemGridWindow;
      
      public function AvatarEditorGridView(param1:IAvatarEditorCategoryModel, param2:String, param3:IHabboWindowManager, param4:IAssetLibrary)
      {
         super();
         _model = param1;
         var_1125 = param2;
         _assetLibrary = param4;
         _windowManager = param3;
         var _loc5_:XmlAsset = _assetLibrary.getAssetByName("AvatarEditorGrid") as XmlAsset;
         _view = IWindowContainer(_windowManager.buildFromXML(_loc5_.content as XML));
         if(_view != null)
         {
            var_458 = _view.findChildByName("part_thumbs") as IItemGridWindow;
            var_384 = new Array();
            var_384.push(_view.findChildByName("palette0") as IItemGridWindow);
            var_384.push(_view.findChildByName("palette1") as IItemGridWindow);
         }
      }
      
      private function paletteEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         if(param1.type == WindowMouseEvent.const_49)
         {
            _loc6_ = param1.window;
            _loc7_ = 0;
            while(_loc7_ < const_1093)
            {
               if(var_384.length > _loc7_)
               {
                  _loc4_ = var_384[_loc7_] as IItemGridWindow;
                  _loc5_ = _loc4_.getGridItemIndex(_loc6_);
                  if(_loc5_ > -1)
                  {
                     _model.selectColor(var_1125,_loc5_,_loc7_);
                     return;
                  }
               }
               _loc7_++;
            }
         }
      }
      
      public function initFromList() : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc1_:CategoryData = _model.getCategoryData(var_1125);
         if(!_loc1_)
         {
            return;
         }
         var_458.removeGridItems();
         for each(_loc2_ in _loc1_.parts)
         {
            if(_loc2_)
            {
               var_458.addGridItem(_loc2_.view);
               _loc2_.view.procedure = partEventProc;
               if(_loc2_.isSelected)
               {
                  showPalettes(_loc2_.colorLayerCount);
               }
            }
         }
         _loc3_ = 0;
         while(_loc3_ < const_1093)
         {
            _loc4_ = _loc1_.getPalette(_loc3_);
            _loc5_ = var_384[_loc3_] as IItemGridWindow;
            if(!(!_loc4_ || !_loc5_))
            {
               for each(_loc6_ in _loc4_)
               {
                  _loc5_.addGridItem(_loc6_.view);
                  _loc6_.view.procedure = paletteEventProc;
               }
            }
            _loc3_++;
         }
         var_840 = false;
      }
      
      public function updatePart(param1:int, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = var_458.getGridItemAt(param1);
         if(!_loc3_)
         {
            return;
         }
         _loc3_ = param2;
      }
      
      private function partEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         if(param1.type == WindowMouseEvent.const_49)
         {
            _loc3_ = var_458.getGridItemIndex(param1.window);
            _model.selectPart(var_1125,_loc3_);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(var_458)
         {
            var_458.dispose();
            var_458 = null;
         }
         if(var_384)
         {
            for each(_loc1_ in var_384)
            {
               if(_loc1_ != null)
               {
                  _loc1_.dispose();
                  _loc1_ = null;
               }
            }
            var_384 = null;
         }
         _model = null;
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
         _windowManager = null;
         _assetLibrary = null;
      }
      
      public function get firstView() : Boolean
      {
         return var_840;
      }
      
      public function showPalettes(param1:int) : void
      {
         var _loc2_:IWindowContainer = _view.findChildByName("palette_container0") as IWindowContainer;
         var _loc3_:IWindowContainer = _view.findChildByName("palette_container1") as IWindowContainer;
         if(!_loc2_ || !_loc3_)
         {
            return;
         }
         var _loc4_:ITextWindow = _view.findChildByName("palette_desc_0") as ITextWindow;
         var _loc5_:ITextWindow = _view.findChildByName("palette_desc_1") as ITextWindow;
         if(!_loc4_ || !_loc5_)
         {
            return;
         }
         if(param1 <= 1)
         {
            _loc2_.width = 318;
            _loc3_.visible = false;
            _loc4_.visible = false;
            _loc5_.visible = false;
         }
         else
         {
            _loc2_.width = 156;
            _loc3_.width = 156;
            _loc3_.visible = true;
            _loc4_.visible = true;
            _loc5_.visible = true;
         }
      }
      
      public function get window() : IWindowContainer
      {
         if(_view == null)
         {
            return null;
         }
         if(false)
         {
            return null;
         }
         return _view;
      }
   }
}
