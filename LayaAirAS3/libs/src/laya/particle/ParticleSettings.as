package laya.particle
{	
	/**
	 * ...
	 * @author ...
	 */
	public class ParticleSettings
	{
		/**贴图*/
		public var textureName:String = null;
		/**贴图个数*/
		public var textureCount:int = 1;
		/**由于循环队列判断算法，最大饱和粒子数为maxPartices-1*/
		public var maxPartices:int = 100;
		/**粒子持续时间(单位:秒）*/
		public var duration:Number = 1;
		/**如果大于0，某些粒子的持续时间会小于其他粒子,并具有随机性(单位:无）*/
		public var ageAddScale:Number = 0;
		/**最小水平速度（单位：2D像素、3D坐标）*/
		public var minHorizontalVelocity:Number = 0;
		/**最大水平速度（单位：2D像素、3D坐标）*/
		public var maxHorizontalVelocity:Number = 0;
		/**最小垂直速度（单位：2D像素、3D坐标）*/
		public var minVerticalVelocity:Number = 0;
		/**最大垂直速度（单位：2D像素、3D坐标）*/
		public var maxVerticalVelocity:Number = 0;
		/**（单位：2D像素、3D坐标）*/
		public var gravity:Float32Array = new Float32Array([0, 0, 0]);
		/**等于1时粒子从出生到消亡保持一致的速度，等于0时粒子消亡时速度为0，大于1时粒子会保持加速（单位：无）*/
		public var endVelocity:Number = 1;
		/**false代表RGBA整体插值，true代表RGBA逐分量插值*/
		public var colorComponentInter:Boolean = false;
		/**最小颜色*/
		public var minColor:Float32Array = new Float32Array([1, 1, 1, 1]);
		/**最大颜色*/
		public var maxColor:Float32Array = new Float32Array([1, 1, 1, 1]);
		/**最小旋转速度（单位：2D弧度/秒、3D弧度/秒）*/
		public var minRotateSpeed:Number = 0;
		/**最大旋转速度（单位：2D弧度/秒、3D弧度/秒）*/
		public var maxRotateSpeed:Number = 0;
		/**最小开始尺寸（单位：2D像素、3D坐标）*/
		public var minStartSize:Number = 100;
		/**最大开始尺寸（单位：2D像素、3D坐标）*/
		public var maxStartSize:Number = 100;
		/**最小结束尺寸（单位：2D像素、3D坐标）*/
		public var minEndSize:Number = 100;
		/**最大结束尺寸（单位：2D像素、3D坐标）*/
		public var maxEndSize:Number = 100;
		
		/**粒子受发射器速度的敏感度（需在自定义发射器中编码设置）*/
		public var emitterVelocitySensitivity:Number = 1;
		
		/**最小开始半径（单位：2D像素、3D坐标）*/
		public var minStartRadius:Number = 0;
		/**最大开始半径（单位：2D像素、3D坐标）*/
		public var maxStartRadius:Number = 0;
		/**最小结束半径（单位：2D像素、3D坐标）*/
		public var minEndRadius:Number = 0;
		/**最大结束半径（单位：2D像素、3D坐标）*/
		public var maxEndRadius:Number = 0;
		/**最小水平结束弧度（单位：2D弧度、3D弧度）*/
		public var minHorizontalEndRadian:Number = 0;
		/**最大水平结束弧度（单位：2D弧度、3D弧度）*/
		public var maxHorizontalEndRadian:Number = 0;
		/**最小垂直结束弧度（单位：2D弧度、3D弧度）*/
		public var minVerticalEndRadian:Number = 0;
		/**最大垂直结束弧度（单位：2D弧度、3D弧度）*/
		public var maxVerticalEndRadian:Number = 0;
		
		/**混合模式，待调整，引擎中暂无BlendState抽象*/
		public var blendState:int = 0;
		
		//.........................................................3D发射器参数.........................................................
		/**发射器类型,"point","box","sphere","ring"*/
		public var emitterType:String = "null";
		/**发射器发射速率*/
		public var  emissionRate:int = 0;
		
	    /**点发射器位置*/
		public var pointEmitterPosition:Float32Array = new Float32Array([0, 0, 0]);
		/**点发射器位置随机值*/
		public var pointEmitterPositionVariance:Float32Array =  new Float32Array([0, 0, 0]);
		/**点发射器速度*/
		public var pointEmitterVelocity:Float32Array =  new Float32Array([0, 0, 0]);
		/**点发射器速度随机值*/
		public var pointEmitterVelocityAddVariance:Float32Array =  new Float32Array([0, 0, 0]);
		
		/**盒发射器中心位置*/
		public var boxEmitterCenterPosition:Float32Array = new Float32Array([0, 0, 0]);
		/**盒发射器尺寸*/
		public var boxEmitterSize:Float32Array = new Float32Array([0, 0, 0]);
		/**盒发射器速度*/
		public var boxEmitterVelocity:Float32Array = new Float32Array([0, 0, 0]);
		/**盒发射器速度随机值*/
		public var boxEmitterVelocityAddVariance:Float32Array = new Float32Array([0, 0, 0]);
		
		/**球发射器中心位置*/
		public var sphereEmitterCenterPosition:Float32Array = new Float32Array([0, 0, 0]);
		/**球发射器半径*/
		public var sphereEmitterRadius:Number = 1;
		/**球发射器速度*/
		public var sphereEmitterVelocity:Number = 0;
		/**球发射器速度随机值*/
		public var sphereEmitterVelocityAddVariance:Number = 0;
		
		/**环发射器中心位置*/
		public var ringEmitterCenterPosition:Float32Array = new Float32Array([0, 0, 0]);
		/**环发射器半径*/
		public var ringEmitterRadius:Number = 30;
		/**环发射器速度*/
		public var ringEmitterVelocity:Number = 0;
		/**环发射器速度随机值*/
		public var ringEmitterVelocityAddVariance:Number = 0;
		/**环发射器up向量，0代表X轴,1代表Y轴,2代表Z轴*/
		public var ringEmitterUp:int = 2;
		//.........................................................3D发射器参数.........................................................
		
		
		//.........................................................2D发射器参数.........................................................
		/**发射器位置随机值,2D使用*/
		public var positionVariance:Float32Array = new Float32Array([0, 0, 0]);
		//.........................................................2D发射器参数.........................................................
		
		public function ParticleSettings()
		{
		
		}
		
		public static function fromFile(particleSettingFile:String):void
		{
		
		}
	
	}

}