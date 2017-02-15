CKEDITOR.editorConfig = function( config )
{

 config.toolbar = [
    { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: [ 'Bold', 'Italic', 'Underline', 'Strike',] },
    { name: 'paragraph', items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent'] },
    { name: 'document' }


  ];

};
$(document).bind('page:before-unload', function() {
    if (typeof(CKEDITOR) != "undefined"){
        for(name in CKEDITOR.instances){
            CKEDITOR.instances[name].destroy()
        }
    }
}); 