//=require jquery

$(document).ready(function() {
    $('.sidebar-block .item').click(function() {
        var $this = $(this);
        var $prevSelected = $this.parents('.sidebar-block').find('.item.selected').removeClass('selected');
        $prevSelected.find('+.sub-level').slideUp();
        if (!$prevSelected.is($this)) {
            $this.addClass('selected').find('+.sub-level').slideDown();
        }
    });
});