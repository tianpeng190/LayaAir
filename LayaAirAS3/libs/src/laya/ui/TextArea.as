package laya.ui
{
	import laya.display.Input;
	
	/**
	 * <code>TextArea</code> 类用于创建显示对象以显示和输入文本。
	 *
	 *
	 * @example 以下示例代码，创建了一个 <code>TextArea</code> 实例。
	 * <listing version="3.0">
	 * package
	 *	{
	 *		import laya.ui.TextArea;
	 *		import laya.utils.Handler;
	 *
	 *		public class TextArea_Example
	 *		{
	 *
	 *			public function TextArea_Example()
	 *			{
	 *				Laya.init(640, 800);//设置游戏画布宽高。
	 *				Laya.stage.bgColor = "#efefef";//设置画布的背景颜色。
	 *				Laya.loader.load(["resource/ui/input.png"], Handler.create(this, onLoadComplete));//加载资源。
	 *			}
	 *
	 *			private function onLoadComplete():void
	 *			{
	 *				var textArea:TextArea = new TextArea("这个一个TextArea实例。");//创建一个 TextArea 类的实例对象 textArea 。
	 *				textArea.skin = "resource/ui/input.png";//设置 textArea 的皮肤。
	 *				textArea.sizeGrid = "4,4,4,4";//设置 textArea 的网格信息。
	 *				textArea.color = "#008fff";//设置 textArea 的文本颜色。
	 *				textArea.font = "Arial";//设置 textArea 的字体。
	 *				textArea.bold = true;//设置 textArea 的文本显示为粗体。
	 *				textArea.fontSize = 20;//设置 textArea 的文本字体大小。
	 *				textArea.wordWrap = true;//设置 textArea 的文本自动换行。
	 *				textArea.x = 100;//设置 textArea 对象的属性 x 的值，用于控制 textArea 对象的显示位置。
	 *				textArea.y = 100;//设置 textArea 对象的属性 y 的值，用于控制 textArea 对象的显示位置。
	 *				textArea.width = 300;//设置 textArea 的宽度。
	 *				textArea.height = 200;//设置 textArea 的高度。
	 *				Laya.stage.addChild(textArea);//将 textArea 添加到显示列表。
	 *			}
	 *
	 *		}
	 *
	 *	}
	 * </listing>
	 * <listing version="3.0">
	 * Laya.init(640, 800);//设置游戏画布宽高、渲染模式
	 * Laya.stage.bgColor = "#efefef";//设置画布的背景颜色
	 * Laya.loader.load(["resource/ui/input.png"], laya.utils.Handler.create(this, onLoadComplete));//加载资源。
	 * function onLoadComplete() {
	 *     var textArea = new laya.ui.TextArea("这个一个TextArea实例。");//创建一个 TextArea 类的实例对象 textArea 。
	 *     textArea.skin = "resource/ui/input.png";//设置 textArea 的皮肤。
	 *     textArea.sizeGrid = "4,4,4,4";//设置 textArea 的网格信息。
	 *     textArea.color = "#008fff";//设置 textArea 的文本颜色。
	 *     textArea.font = "Arial";//设置 textArea 的字体。
	 *     textArea.bold = true;//设置 textArea 的文本显示为粗体。
	 *     textArea.fontSize = 20;//设置 textArea 的文本字体大小。
	 *     textArea.wordWrap = true;//设置 textArea 的文本自动换行。
	 *     textArea.x = 100;//设置 textArea 对象的属性 x 的值，用于控制 textArea 对象的显示位置。
	 *     textArea.y = 100;//设置 textArea 对象的属性 y 的值，用于控制 textArea 对象的显示位置。
	 *     textArea.width = 300;//设置 textArea 的宽度。
	 *     textArea.height = 200;//设置 textArea 的高度。
	 *     Laya.stage.addChild(textArea);//将 textArea 添加到显示列表。
	 * }
	 * </listing>
	 * <listing version="3.0">
	 * import TextArea = laya.ui.TextArea;
	 * import Handler = laya.utils.Handler;
	 * class TextArea_Example {
	 *     constructor() {
	 *         Laya.init(640, 800);//设置游戏画布宽高、渲染模式。
	 *         Laya.stage.bgColor = "#efefef";//设置画布的背景颜色。
	 *         Laya.loader.load(["resource/ui/input.png"], Handler.create(this, this.onLoadComplete));//加载资源。
	 *     }
	 *     private onLoadComplete(): void {
	 *         var textArea: TextArea = new TextArea("这个一个TextArea实例。");//创建一个 TextArea 类的实例对象 textArea 。
	 *         textArea.skin = "resource/ui/input.png";//设置 textArea 的皮肤。
	 *         textArea.sizeGrid = "4,4,4,4";//设置 textArea 的网格信息。
	 *         textArea.color = "#008fff";//设置 textArea 的文本颜色。
	 *         textArea.font = "Arial";//设置 textArea 的字体。
	 *         textArea.bold = true;//设置 textArea 的文本显示为粗体。
	 *         textArea.fontSize = 20;//设置 textArea 的文本字体大小。
	 *         textArea.wordWrap = true;//设置 textArea 的文本自动换行。
	 *         textArea.x = 100;//设置 textArea 对象的属性 x 的值，用于控制 textArea 对象的显示位置。
	 *         textArea.y = 100;//设置 textArea 对象的属性 y 的值，用于控制 textArea 对象的显示位置。
	 *         textArea.width = 300;//设置 textArea 的宽度。
	 *         textArea.height = 200;//设置 textArea 的高度。
	 *         Laya.stage.addChild(textArea);//将 textArea 添加到显示列表。
	 *     }
	 * }
	 * </listing>
	 * @author yung
	 */
	public class TextArea extends TextInput
	{
		
		/**
		 * <p>创建一个新的 <code>TextArea</code> 示例。</p>
		 * @param text 文本内容字符串。
		 */
		public function TextArea(text:String = "")
		{
			super(text);
			multiline = true;
			//Input(_tf).nativeInput.style.whiteSpace = "nowrap";
			//Input(_tf).nativeInput.style.overflow = "scroll";
		}
	}
}