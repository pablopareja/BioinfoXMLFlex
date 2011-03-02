package com.era7.bioinfo.xml.go
{
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;

	public class GoTerm extends XMLObject
	{
		
		public static const TAG_NAME:String = "go_term";
		
		public static const ASPECT_FUNCTION:String = "molecular_function";
		public static const ASPECT_FUNCTION_GO_TERM:String = "GO:0003674";
		public static const ASPECT_COMPONENT:String = "cellular_component";
		public static const ASPECT_COMPONENT_GO_TERM:String = "GO:0005575";
		public static const ASPECT_PROCESS:String = "biological_process";
		public static const ASPECT_PROCESS_GO_TERM:String = "GO:0008150";
		
		public static const DATE_TAG_NAME:String = "date";		
		public static const ID_TAG_NAME:String = "id";
		public static const DEFINITION_TAG_NAME:String = "definition";
		public static const NAME_TAG_NAME:String = "name";
		public static const REFERENCE_TAG_NAME:String = "reference";
		public static const EVIDENCE_TAG_NAME:String = "evidence";
		public static const WITH_TAG_NAME:String = "with";
		public static const ASPECT_TAG_NAME:String = "aspect";
		public static const SOURCE_TAG_NAME:String = "source";
		
		/**
		 * CONSTRUCTOR
		 */
		public function GoTerm(... args)
		{	
			var temp:Object;
			var proceed:Boolean = false;			
			
			if(args.length == 0){
				temp = new XML(<{TAG_NAME}/>);
				proceed = true;
			}else if(args.length == 1){
				temp = args[0];
				proceed = true;
			}else{
				proceed = false;
			}
			
			if(proceed){
				super(temp);
				
				if(this.content.name() != TAG_NAME){
					throw new XMLError(XMLError.WRONG_TAG_NAME_ERROR);
				}				
				
			}else{
				throw new XMLError(XMLError.TOO_MANY_PARAMETERS_FOR_THE_CONSTRUCTOR);
			}
		}	
		
		
		public function transformIdToGoOfficialSyntax():void{
			var temp:String = this.id;
			if(temp.indexOf("GO:") < 0){
				var digits:int = temp.length;
				var idSt:String = "GO:";
				for(var i:int=0;i < 7-digits;i++){
					idSt += "0";
				}
				idSt += temp;
				this.id = idSt;
			}		
		}
		public function transformIdToDBSyntax():void{
			var temp:String = this.id;
			var tempId:int = parseInt(temp.replace("GO:",""));
			this.id = String(tempId);
		}
		
		//---------------------------------SETTERS------------------------------------
		[Bindable]
		public function set id(value:String):void{	setTagText(ID_TAG_NAME,value);}
		[Bindable]
		public function set date(value:String):void{	setTagText(DATE_TAG_NAME,value);}
		[Bindable]
		public function set definition(value:String):void{	setTagText(DEFINITION_TAG_NAME,value);}
		[Bindable]
		public function set name(value:String):void{	setTagText(NAME_TAG_NAME,value);}
		[Bindable]
		public function set reference(value:String):void{	setTagText(REFERENCE_TAG_NAME,value);}
		[Bindable]
		public function set evidence(value:String):void{	setTagText(EVIDENCE_TAG_NAME,value);}
		[Bindable]
		public function set With(value:String):void{	setTagText(WITH_TAG_NAME,value);}
		[Bindable]
		public function set aspect(value:String):void{	setTagText(ASPECT_TAG_NAME,value);}
		[Bindable]
		public function set source(value:String):void{	setTagText(SOURCE_TAG_NAME,value);}
		
		//---------------------------------GETTERS------------------------------------
		public function get id():String{	return getTagText(ID_TAG_NAME);}
		public function get date():String{	return getTagText(DATE_TAG_NAME);}
		public function get definition():String{	return getTagText(DEFINITION_TAG_NAME);}
		public function get name():String{	return getTagText(DEFINITION_TAG_NAME);}
		public function get reference():String{	return getTagText(REFERENCE_TAG_NAME);}
		public function get evidence():String{	return getTagText(EVIDENCE_TAG_NAME);}
		public function get aspect():String{	return getTagText(ASPECT_TAG_NAME);}
		public function get source():String{	return getTagText(SOURCE_TAG_NAME);}
		public function get With():String{	return getTagText(WITH_TAG_NAME);}
		
		
	}
}