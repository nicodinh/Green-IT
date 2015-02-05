/* classe permettant de jouer, stopper un son , musique */

package components
{
	import flash.errors.IOError;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
	
	public class Music
	{
		private var sc:SoundChannel = new SoundChannel();
		private var snd:Sound = new Sound();  
		
		public function Music()
		{
			
		}
		
		public function playMusic(url:String):void
		{
			var req:URLRequest = new URLRequest(url);
			
			try {
				snd.load(req);
				sc = snd.play(0,int.MAX_VALUE);
			}
			catch (err:Error) {
				trace(err.message);
			}
		}
		
		
		public function stopMusic():void
		{
			try {
				sc.stop()
			}
			catch (err:IOError) {
				trace(err.message);  
			}
		}
		
		public function deleteMusic(mc:Music):void
		{
			mc = null;
		}
	}
}