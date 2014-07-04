function Xslt(){
	this.ConteudoTransformado='';
	this.objeDiv = null;
	this.xsl     = null;
	this.xml     = null;
	 
	this.navegador = function(){
		if(window.ActiveXObject){
		 	return 'IE'; 
		}else{
			if(window.XMLHttpRequest){
				return 'FireFox'; 
			}else{
				return 'desconhecido';  
			}  
		}  
	}
	
	this.fireFox = function(){
		var objeXSLTProcessor;			
		//objeto xslt processor do firefox
		objeXSLTProcessor = new XSLTProcessor();
		objeXSLTProcessor.importStylesheet(this.xsl);		
		//Transformação
		this.ConteudoTransformado = objeXSLTProcessor.transformToFragment(this.xml, document);
		this.objeDiv.innerHTML    = '';
		this.objeDiv.appendChild(this.ConteudoTransformado);
	}
	
	this.Ie = function(){
		//Transformação
		this.ConteudoTransformado = this.xml.transformNode(this.xsl);
		this.objeDiv.innerHTML    = this.ConteudoTransformado;			  
		//alert(this.objeDiv.innerHTML);
	}
	
	this.imprimi = function(xml,div,xsl){
		this.objeDiv = document.getElementById(div);
		this.xml     = xml;
		this.xsl     = xsl;
		if(this.navegador()=='IE'){
			this.Ie();  
		}else{
			if(this.navegador()=='FireFox'){	
				this.fireFox();	  
			}  
		}  
	}
}