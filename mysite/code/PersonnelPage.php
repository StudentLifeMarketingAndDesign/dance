<?php
/**
 * Defines the PersonnelPage page type
 */
 
class PersonnelPage extends Page {
	static $db = array(
		"PersonnelEmail" => "Text",
		"PersonnelTitle" => "Text",
		"PersonnelPhone" => "Text",
		"PersonnelFax" => "Text",
		"PersonnelOffice" => "Text",
		"YoutubeLink" => "Text",
		"YoutubeCaption" => "Text",
		"TabTitle" => "Text",
		"TabCaption" => "Text",
		"TabLink" => "Text",
		"TabCaption2" => "Text",
		"TabLink2" => "Text",
		"LightBox" => "Text",
		"LightboxSet" => "Text",
	);
   static $has_one = array(
   
  	'ContentImage' => 'Image'
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
	$fields->addFieldToTab('Root.Content.Main', new TextField('PersonnelEmail', 'Email Address'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('PersonnelTitle', 'Title'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('PersonnelPhone', 'Phone (optional)'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('PersonnelFax', 'Fax (optional)'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('PersonnelOffice', 'Office (optional)'));
    $fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Profile Picture Here MUST be 484x486 pixels'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeLink', 'Enter code at end of youtube url here'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeCaption', 'Enter caption here'));
		$fields->addFieldToTab('Root.Content.Tab', new TextField('TabTitle', 'Enter Headline here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabCaption', 'Enter caption here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabLink', 'Enter Link here'));
		$fields->addFieldToTab('Root.Content.Tab', new TextField('TabCaption2', 'Enter caption here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabLink2', 'Enter Link here'));
		$fields->addFieldToTab('Root.Content.Tab', new TextField('LightBox', 'Enter Lightbox link here'));
		$fields->addFieldToTab('Root.Content.Tab', new TextField('LightboxSet', 'Enter Lightbox link here'));
	
   return $fields;
}
}
 
class PersonnelPage_Controller extends Page_Controller {
	
}
?>