function updatedev(id){
    $.ajax({
        url: '/shop/' + id,
        type: 'PUT',
        data: $('#update-dev').serialize(),
        success: function(result){
            window.location.replace("./");
        }



    })
};
