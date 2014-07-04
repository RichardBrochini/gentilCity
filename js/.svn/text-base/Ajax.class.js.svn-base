function Ajax(){   
	this.xsl           = null;
	this.xml           = null;
	this.linkXsl       = null;
	this.linkXml       = null;
	this.xmlHttp       = null;
	this.div           = null;
	this.conteudo      = null;
	this.carregando    = null;
	this.divCarregando = null;
	this.objxsl        = new Xslt();
	this.funcao        = function(){}
	
	this.setXmlHttp = function(){
		try{
	       		 this.xmlHttp = xmlhttp = new XMLHttpRequest();
		}catch(ee){
		        try{
		                this.xmlHttp = xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
		        }catch(e){
		                try{
		                        this.xmlHttp = xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		                }catch(E){
		                        this.xmlHttp = xmlhttp = false;
		                }
		        }
		}
  		return this.xmlHttp;
	} 
	
	this.setConteudo = function(tmp){
		this.conteudo=tmp;	
	}
	
	this.setXml = function(tmp){
		this.linkXml=tmp;	
	}

	this.setXsl = function(tmp){
		this.linkXsl=tmp;		
	}

	this.setDiv = function(tmp){
		this.div=tmp;		
	}

	this.Post = function(){
	 	window.status = "enviando para www.bigmarcas.com...";
		this.setXmlHttp();
		
		var enviar = {
			xmlHttp : this.xmlHttp,
			xml     : null,
			xsl     : this.linkXsl,
			div     : this.div,
			objXsl  : this.objxsl,
			func    : this.funcao
		};
		//alert(this.conteudo);
		enviar.xmlHttp.open("POST",this.linkXml,true);
		enviar.xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		enviar.xmlHttp.setRequestHeader('Content-length',this.conteudo.length );
		enviar.xmlHttp.onreadystatechange = function(){
			if (enviar.xmlHttp.readyState == '4'&& enviar.xmlHttp.status == 200){
				enviar.xml = enviar.xmlHttp.responseXML;
				//alert(enviar.xmlHttp.responseText);
				enviar.xmlHttp.open("GET",enviar.xsl,true);
				enviar.xmlHttp.onreadystatechange = function(){
					if (enviar.xmlHttp.readyState == '4'&& enviar.xmlHttp.status == 200){
						  enviar.xsl = enviar.xmlHttp.responseXML;
						  enviar.objXsl.imprimi(enviar.xml,enviar.div,enviar.xsl);
						  window.status = "Concluido";
	 					  window.status = "";
						  enviar.func();
					}
				}
				enviar.xmlHttp.send(null);	
			}	
		}
		enviar.xmlHttp.send(this.conteudo);	
	}
	
	this.Texto = function(){
		this.setXmlHttp();
		var enviar = {
			xmlHttp : this.xmlHttp,
			xml     : null,
			div     : this.div
		};
		enviar.xmlHttp.open("POST",this.linkXml,true);
		enviar.xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		enviar.xmlHttp.setRequestHeader('Content-length',this.conteudo.length );
	 	enviar.xmlHttp.onreadystatechange = function(){
			if (enviar.xmlHttp.readyState == '4'&& enviar.xmlHttp.status == 200){								
				document.getElementById(enviar.div).innerHtml = enviar.xmlHttp.responseText;
			}	
		}
		enviar.xmlHttp.send(this.conteudo);			
	}
	
	this.envia = function(){
	 	window.status = "enviando para www.bigmarcas.com...";
		this.setXmlHttp();
		var enviar = {
			xmlHttp : this.xmlHttp,
			xml     : null,
			func    : this.funcao
		};
		enviar.xmlHttp.open("POST",this.linkXml,true);
		enviar.xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		enviar.xmlHttp.setRequestHeader('Content-length',this.conteudo.length );
		enviar.xmlHttp.onreadystatechange = function(){
			if (enviar.xmlHttp.readyState == '4'&& enviar.xmlHttp.status == 200){
				enviar.func();
	 			window.status = "";
			}	
		}
		enviar.xmlHttp.send(this.conteudo);	
	}
}