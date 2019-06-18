</div>
<div class="col-md-12 text-center ">&copy; Copyrights 2017-2018 E-CART  </div>
<script>
function updateSizes(){
var sizeString = '';
for(var i=1;i<=12;i++){
if(jQuery('#size' +i).val()!=''){
sizeString += jQuery('#size' +i).val()+':'+jQuery('#qty'+i).val()+',';

}

}
jQuery('#sizes').val(sizeString);
}



function get_child_options(){
var parentID = jQuery('#parent').val();
jQuery.ajax({
url: '/ecart/admin/parsers/child_categories.php',
type: 'POST',
data: {parentID : parentID},
success : function(data){
jQuery('#child').html(data);
},
error: function(){alert("Something Went Wrong the child option.")},
});
}
jQuery('select[name="parent"]').change(get_child_options);
</script>
</body>
</html>
