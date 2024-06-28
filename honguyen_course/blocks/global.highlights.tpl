<!-- BEGIN: main -->
<div class="row">
	<!-- BEGIN: loop -->
	<div class="col-xs-24 col-sm-8 col-md-8">
		<div class="highlights-item">
			<div class="highlights-item-wraper">
				<i class="{DATA.icon}"></i>
				<h3>{DATA.name}</h3>
				<div class="des">{DATA.description}</div>
			</div>
		</div>
	</div>
	<!-- END: loop -->
</div>
<!-- END: main -->
<!-- BEGIN: config -->
<div class="control-label col-sm-6"></div>
<div class="col-sm-18">
	<div id="highlights_row">
		<!-- BEGIN: loop -->
		<div class="panel panel-default loop-item">
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-4">
						<div class="form-group">
							<input class="form-control" name="config_highlights[{HIGHLIGHTS.index}][icon]" value="{HIGHLIGHTS.icon}" type="text" placeholder="{LANG.icon}">
						</div>
					</div>
					<div class="col-sm-16">
						<div class="form-group">
							<input class="form-control" name="config_highlights[{HIGHLIGHTS.index}][name]" value="{HIGHLIGHTS.name}" type="text" placeholder="{LANG.name}">
						</div>
					</div>
					<div class="col-sm-4">
						<em class="fa fa-trash-o fa-lg pointer" onclick="nv_item_delete(this); return !1;">&nbsp;</em>
					</div>
					<div class="col-sm-24">
						<div class="form-group">
							<input class="form-control" name="config_highlights[{HIGHLIGHTS.index}][description]" value="{HIGHLIGHTS.description}" type="text" placeholder="{LANG.description}">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END: loop -->
	</div>
	<div class="text-center">
		<button class="btn btn-primary btn-xs" onclick="nv_add_highlights(); return !1;">{LANG.add}</button>
	</div>
</div>
<script>
function nv_item_delete($this) {
    $this.closest('.loop-item').remove();
}

var index = {INDEX};
function nv_add_highlights(){
	var html = '';

	html += '<div class="panel panel-default">';
	html += '	<div class="panel-body">';
	html += '		<div class="form-group">';
	html += '			<div class="row">';
	html += '				<div class="col-sm-4">';
	html += '					<div class="form-group">';
	html += '						<input class="form-control" name="config_highlights[' + index + '][icon]" type="text" placeholder="{LANG.icon}">';
	html += '					</div>';
	html += '				</div>';
	html += '				<div class="col-sm-20">';
	html += '					<div class="form-group">';
	html += '						<input class="form-control" name="config_highlights[' + index + '][name]" type="text" placeholder="{LANG.name}">';
	html += '					</div>';
	html += '				</div>';
	html += '				<div class="col-sm-24">';
	html += '					<div class="form-group">';
	html += '						<input class="form-control" name="config_highlights[' + index + '][description]" type="text" placeholder="{LANG.description}">';
	html += '					</div>';
	html += '				</div>';
	html += '			</div>';
	html += '		</div>';
	html += '	</div>';
	html += '</div>';

	index++;
	
	$('#highlights_row').append(html);
}
</script>
<!-- END: config -->
