/**
 * Created by zhugm on 2015/11/9.
 */
function message()
{
    alert("该提示框是通过外部javascript调用的！！");
}

function ok()
{
    alert("okokokok");
}

function show_confirm()
{
    var r = confirm("press a button");
    if(r==true)
    {
        alert("you pressed ok!");
    }
    else
    {
        alert("you pressed cancel");
    }
}

function disp_prompt()
{
    var name = prompt("请输入您的名字","Billy");
    if(name != null && name != "")
    {
        document.write("你好" + name + "今天过的怎么样？")
    }
}

function trymessage()
{
    try
    {
        addalert("welcome guest");
    }
    catch(err)
    {
        txt="本页中存在错误。\n\n";
        txt+="错误描述：" + err.description + "\n\n";
        txt+="点击“确定”继续。\n\n";
        alert(txt);
    }
}