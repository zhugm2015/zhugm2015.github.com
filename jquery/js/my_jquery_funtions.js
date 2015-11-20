/**
 * Created by BH00350 on 2015/11/12.
 */
function my_jquery_funtions(){
$(document).ready(function(){                     //文档就绪函数
    $("button").click(function(){
        // $(this).hide();                            //隐藏当前元素
        //$("p").hide();                             //隐藏所有段落
        // $("p.test1").hide();                       //隐藏所有class="test1"的段落
        $("p#test2").hide();                       // 隐藏所有 id="test" 的元素
        $("p").css("background-color","red");   //把所有 p 元素的背景颜色更改为红色：
        $("p.test1").css("background-color","green");   //把所有 p 元素的背景颜色更改为红色：
    });
});
}