function get_item(item, name)
{
	for(var i = 0; i < item.children.length; ++i) {
		if(item.children[i].objectName === name) {
			return item.children[i];
		}
	}
	for(var i = 0; i < item.children.length; ++i) {
		var result = get_item(item.children[i], name);
		if(result) {
			return result;
		}
	}
	return null;
}
