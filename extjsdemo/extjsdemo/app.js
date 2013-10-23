(function (A) {
    A.fn.MyTest = function (options) {
        var settings = $.extend({ a: "aa", b: "bb" }, options);
        return this.each(function () {
            A(this).append(" (" + A(this).attr("href") + ")");
            A(this).hover(function () {
                A(this).append("<span>ooooooo</span>")
            }, function () { A(this).children("span").remove(); });
        })
    }
} (jQuery));

$(document).ready(function () {
    $("#adiv a").MyTest();

})



