function Swf(){
	this.flashvars = null;
	this.div       = null;
	this.swf       = null;
	this.largura   = 0;
	this.altura    = 0;			
	this.so	       = null;
	this.cor       = "#FFFFFF";
	this.versao    = "9.0";
	this.antiCache = Math.round(9999*Math.random());
	
	this.setVars = function(tmp){
		this.flashvars = tmp;  
	}	
	
	this.setDiv = function(tmp){
		this.div = tmp;  
	}
	
	this.setAltura = function(tmp){
		this.altura = tmp;  
	}
	
	this.setLargura = function(tmp){
		this.largura = tmp;  
	}
	
	this.setSwf = function(tmp){
		this.swf = tmp;
		this.swf = this.swf+"?"+this.antiCache+'='+this.antiCache;

	}
	
	this.setCor = function(tmp){
		this.cor = tmp;
	}
	
	this.setVersao = function(tmp){
		this.versao = tmp;
	}
	
	this.gerar = function(){
		this.so = new SWFObject(this.swf,"swf"+this.div,this.largura,this.altura,"9.0",this.cor,true);		
		this.so.addParam("menu", "false");
		this.so.addParam("quality", "high");
		this.so.addParam("wmode", "transparent");
		this.so.addParam("allowScriptAccess", "always");
		this.so.addParam("scale", "noscale");
		this.so.addParam("FlashVars",this.flashvars);
		this.so.write(this.div);
	}	
}