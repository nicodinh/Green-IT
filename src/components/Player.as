/* classe permettant de créer un joueur, gerer ses attributs */


package components
{
	public class Player
	{
		private var _nom:String;
		private var _argent:int;
		private var _reussite:int;
		//competence acquise
		//mission accompli?
		
		public function Player(Nm:String, Mn:int)
		{
			this._nom = Nm;
			this._argent = Mn;
			this._reussite = 0;
		}
		
		
		public function get reussite():int
		{
			return _reussite;
		}

		public function set reussite(value:int):void
		{
			_reussite = value;
		}

		public function get argent():int
		{
			return _argent;
		}

		public function set argent(value:int):void
		{
			_argent = value;
		}

		public function get nom():String
		{
			return _nom;
		}

		public function set nom(value:String):void
		{
			_nom = value;
		}

		public function savePlayer():void
		{
			
		}
		
		public function loadPlayer():void
		{
			
		}
		
		
	}
}