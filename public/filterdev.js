function filterGameByDev(){
    var dev_id = document.getElementById('dev_filter').value
    console.log(dev_id);
    window.location = '/shop/filter/' + parseInt(dev_id);

}
