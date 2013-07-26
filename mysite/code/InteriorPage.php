<?php
/**
 * Defines the HomePage page type
 */
 
class InteriorPage extends Page {
	
		public static $defaults = array(
							 
		'TabType' => 'Orange'
	
	);
		
 static $db = array(
	'TabType' => 'Text',
	"TabTitle" => "Text",
	"TabCaption" => "Text",
	"TabLink" => "Text",
	"TabCaption2" => "Text",
	"TabLink2" => "Text",
	"LightBox" => "Text",
	"LightboxSet" => "Text",
);
   static $has_one = array(
   

 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabTitle', 'Enter Headline here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabCaption', 'Enter caption here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabLink', 'Enter Link here'));
		$fields->addFieldToTab('Root.Content.Tab', new TextField('TabCaption2', 'Enter caption here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabLink2', 'Enter Link here'));
		$fields->addFieldToTab('Root.Content.Tab', new TextField('LightBox', 'Enter Lightbox link here'));
		$fields->addFieldToTab('Root.Content.Tab', new TextField('LightboxSet', 'Enter Lightbox link here'));

	$array = array(
	  'Orange' => 'Orange',
	  'Mauve' => 'Mauve',
	  'Green' => 'Green',
	);
	 
	$fields->addFieldToTab('Root.Content.Tab', new DropdownField('TabType','TabType', $array));



   return $fields;
}
}
 
class InteriorPage_Controller extends Page_Controller {
	
public function init() {
		parent::init();
		
	}
	
	
	
}

?>