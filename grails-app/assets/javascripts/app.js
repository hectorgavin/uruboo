//=require jquery

$(document).ready(function() {
    $('ul.sidebar-block .item').click(function() {
        var $this = $(this);
        var $prevSelected = $this.parents('ul').find('li.selected').removeClass('selected');
        $prevSelected.find('ul').slideUp();
        if (!$prevSelected.find('.item').is($this)) {
            $(this).parents('li').addClass('selected').find('ul').slideDown();
        }
    });
});