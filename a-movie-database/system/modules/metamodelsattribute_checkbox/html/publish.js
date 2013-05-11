
AjaxRequest.togglePublishCheckbox = function(el, id, table)
{
	el.blur();
	var img = null;
	var image = $(el).getFirst('img');
	var publish = (image.src.indexOf('invisible') != -1);
	var div = el.getParent('div');

	// Send request
	new Request({'url':el.href, onSuccess: function() {
		if (publish) {
			el.href = el.href.replace('state=1', 'state=0');
			image.src = image.src.replace('invisible.gif', 'visible.gif');
		} else {
			el.href = el.href.replace('state=0', 'state=1');
			image.src = image.src.replace('visible.gif', 'invisible.gif');
		}
	 }}).get();

	return false;
};
