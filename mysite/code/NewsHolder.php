<?php

class NewsHolder extends Page {
	
	public static $db = array(
	"TabTitle" => "Text",
	"TabCaption" => "Text",
	"TabLink" => "Text",
	"TabCaption2" => "Text",
	"TabLink2" => "Text",
	
	);
	
	public static $has_one = array(
								   
	'ContentImage' => 'Image'
								   
	);

static $allowed_children = array('NewsPage', 'NewsArchive');
	
	
   function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Event Image 469x331 pixels'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabTitle', 'Enter Headline here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabCaption', 'Enter caption here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabLink', 'Enter Link here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabCaption2', 'Enter caption here'));
	$fields->addFieldToTab('Root.Content.Tab', new TextField('TabLink2', 'Enter Link here'));
    return $fields;
   }
   
	public function GetChildren($Limit = 5) {
		$Children = $this->Children();	
		return $Children->getRange(0,$Limit);
	}
}

class NewsHolder_Controller extends Page_Controller {
	public function init() {
		parent::init();
		RSSFeed::linkToFeed($this->Link() . "rss", "RSS feed");
	}
	
	function rss() {
		$set = DataObject::get("NewsPage");
		$rss = new RSSFeed($set, $this->Link(), "News Feed", "Shows a list of the most recently updated news and events.", "Title", "Content", "Author");
		$rss->outputToBrowser();
	}
	
	function allNews() {
	if(!isset($_GET['start']) || !is_numeric($_GET['start']) || (int)$_GET['start'] < 1) $_GET['start'] = 0;
		$SQL_start = (int)$_GET['start'];
		$doSet = DataObject::get(
		$callerClass = "NewsPage",
		$filter = "ShowInMenus = '1' and ParentID = '5'",
		$sort = "sort",
		$join = "",
		$limit = "{$SQL_start},5"
  	);
		
 
  return $doSet ? $doSet : false;
}


	
	
	
	


}

?>