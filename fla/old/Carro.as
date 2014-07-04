package {
	import flash.display.MovieClip;

	public class Carro{
		
		public var carro:MovieClip;
		public var mover:Boolean;
		
		public function Carro(){
			var tipoCarro:Number = 0; 
			this.mover = true;
			tipoCarro = Math.round(Math.random()*2);
			if(tipoCarro==0){
				this.carro = new Carroazul();
			}else if(tipoCarro==1){
				this.carro = new Carroverde();
			}else if(tipoCarro==2){
				this.carro = new Carrovermelho();				
			}else{
				this.carro = new Carroazul();
			}
		}
	}
}