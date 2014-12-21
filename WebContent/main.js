$(document).ready(function() {
    //toggle `popup` / `inline` mode
    $.fn.editable.defaults.mode = 'popup';     
    
    //make username editable
    $('#username').editable();
    
    $('#productname').editable({
        type: 'text',
        title: 'enter product name',
        placement: 'right',
        /*
        //uncomment these lines to send data on server
        ,pk: 1
        ,url: '/post'
        */
    });

    
    $('#unitprice').editable({
        type: 'text',
        title: 'enter unit price',
        value: 0,
        url: '/post',
        placement: 'right',
        /*
        //uncomment these lines to send data on server
        ,pk: 1
        ,url: '/post'
        */
    });
    
    $('#desired').editable({
        type: 'text',
        title: 'enter desired number',
        value: 0,
        url: '/post',
        placement: 'right',
        /*
        //uncomment these lines to send data on server
        ,pk: 1
        ,url: '/post'
        */
    });
    
    //make status editable
    $('#storeurl').editable({
        type: 'text',
        title: 'input store url',
        placement: 'right',
        /*
        //uncomment these lines to send data on server
        ,pk: 1
        ,url: '/post'
        */
    });
    
    $('#description').editable({
        type: 'textarea',
        title: 'Enter description',
        rows: 10
        /*
        //uncomment these lines to send data on server
        ,pk: 1
        ,url: '/post'
        */
    });
});