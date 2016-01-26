//=require jquery

$(document).ready(function() {
    $('.sidebar-block li span').click(function() {
        var $this = $(this);
        var $prevSelected = $this.parents('.sidebar-block').find('li.selected').removeClass('selected');
        $prevSelected.find('ul').slideUp();
        if (!$prevSelected.is($this.parents('li'))) {
            $this.parents('li').addClass('selected').find('ul').slideDown();
        }
    });
});