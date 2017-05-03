<?php

class WebPage // класс для обработки веб-страниц
    {

    var $contentFileName;

    function WebPage($_contentFileName = 'main.php')
        {
        $this->contentFileName = $_contentFileName;
        //session_start();
        $db = new Work_withDB();
        //$db->ConnectDB();
        //$mistake_message = $mistake_warning = "";
        //вывод шаблона на экран
        echo <<<OUT
<html>
<head>
<title>Люстры и светильники в Донецке</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="STYLESHEET" type="text/css" href="style.css">
</head>
<body>
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td>&nbsp;</td>
    <td width="750"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td valign="top"><img src="images/cvbg.jpg" width="749" height="14"></td>
      </tr>
    </table>      <table width="100%" height="87"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="26%" height="87" valign="top"><a href='index.php' title='На главную страницу сайта'><img src="images/logo.jpg" width="197" height="87" border="0"></a></td>
        <td width="73%" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="87"><img src="images/spacer.gif" width="4" height="1"></td>
            <td width="100%" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="41%" height="25"><img src="images/spacer.gif" width="148" height="1"></td>
                <td width="59%">&nbsp;</td>
              </tr>
            </table>
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><img src="images/hr.jpg" width="360" height="18"></td>
                </tr>
              </table>
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td background="images/hr2.jpg"><img src="images/hr2.jpg" width="100%" height="4"></td>
                </tr>
              </table>
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="39" valign="top" bgcolor="DDDCD9"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="53%" height="39"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="22%" align="right"><img src="images/map1.jpg" width="19" height="14"></td>
                          <td width="78%"><strong><div style="text-transform:uppercase; color: #534741;"><a href="index.php" style="color:#534741" title='На главную страницу сайта'>В начало</a></div>
                          </strong></td>
                        </tr>
                      </table></td>
                      <td width="47%"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="22%" align="right"><!--<img src="images/dsf.jpg" width="19" height="14"></td>
                          <td width="78%"><strong>
                            <div style="text-transform:uppercase; color: #534741;"><a href="#" style="color:#534741" title='Список торговых марок. Пока не работает!'>Торговые марки</a></div>

                          </strong>-->&nbsp;</td>
                        </tr>
                      </table></td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
            <td><img src="images/spacer.gif" width="4" height="1"></td>
          </tr>
        </table></td>
        <td width="1%" valign="top" background="images/cfg.jpg" style="background-repeat:no-repeat">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/spacer.gif" width="183" height="1"></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td valign="top"><img src="images/spacer.gif" width="1" height="3"></td>
      </tr>
    </table>
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="21%" height="449" valign="top">
        <table width="197"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td background="images/s1.jpg" width="197" height="22" style="padding-left:20; text-transform:uppercase">Светильники</td>
          </tr>
OUT;
        $db->ShowCategories();
        echo <<<OUT
          <tr>
            <td height="22" valign="center" background="images/extr.jpg" style="background-repeat:no-repeat; padding-left:20; text-transform:uppercase">Сопутствующие товары</td>
          </tr>
OUT;
        $db->ShowCategoriesAcc();
        echo <<<OUT
          <tr>
            <td height="4" valign="top" style="background-repeat:no-repeat "><img src="images/spacer.gif" width="1" height="4"></td>
          </tr>
          <tr>
            <td background="images/banner.jpg" style="background-repeat:no-repeat" align="center" height="92">
            Контакты:<br>5-555-555-55-55<br>1-111-111-11-11<br><a href="mailto:lamps_don@ukr.net">lamps_don@ukr.net</a>
            </td>
          </tr>
          <tr>
            <td align="center" height="52">
            <!-- HotLog -->

<script type="text/javascript" language="javascript">
hotlog_js="1.0";
hotlog_r=""+Math.random()+"&s=494675&im=134&r="+escape(document.referrer)+"&pg="+
escape(window.location.href);
document.cookie="hotlog=1; path=/"; hotlog_r+="&c="+(document.cookie?"Y":"N");
</script>
<script type="text/javascript" language="javascript1.1">
hotlog_js="1.1";hotlog_r+="&j="+(navigator.javaEnabled()?"Y":"N")
</script>
<script type="text/javascript" language="javascript1.2">
hotlog_js="1.2";
hotlog_r+="&wh="+screen.width+'x'+screen.height+"&px="+
(((navigator.appName.substring(0,3)=="Mic"))?
screen.colorDepth:screen.pixelDepth)</script>
<script type="text/javascript" language="javascript1.3">hotlog_js="1.3"</script>
<script type="text/javascript" language="javascript">hotlog_r+="&js="+hotlog_js;
document.write("<a href='http://click.hotlog.ru/?494675' target='_top'><img "+
" src='http://hit25.hotlog.ru/cgi-bin/hotlog/count?"+
hotlog_r+"&' border=0 width=88 height=31 alt=HotLog><\/a>")
</script>
<noscript>
<a href="http://click.hotlog.ru/?494675" target="_top">
<img src="http://hit25.hotlog.ru/cgi-bin/hotlog/count?s=494675&amp;im=134" border="0"
 width="88" height="31" alt="HotLog"></a>
</noscript>

<!-- /SpyLOG  -->
            </td>
          </tr>
          <tr>
            <td align="center" height="52">
            <!-- SpyLOG -->
<script src="http://tools.spylog.ru/counter_cv.js" id="spylog_code" type="text/javascript" counter="1027615" part="" track_links="ext" page_level="0">
</script>
<noscript>
<a href="http://u10276.15.spylog.com/cnt?cid=1027615&f=3&p=0" target="_blank">
<img src="http://u10276.15.spylog.com/cnt?cid=1027615&p=0" alt="SpyLOG" border="0" width="88" height="31"></a>
</noscript>
<!--/ SpyLOG -->
            </td>
          </tr>
        </table>
        </td>
        <td width="46%" valign="top">
OUT;
        //Вывод контента
        include_once ($_contentFileName);
        echo <<<OUT
        </td>
        <td width="33%" valign="top">
OUT;
        $db->ShowTopSale();
        echo <<<OUT

          </td>
      </tr>
    </table>
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td valign="top"><img src="images/da.jpg" width="749" height="12"></td>
      </tr>
    </table>
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="37">&nbsp;&nbsp;<!--<a href="#">О нас</a> | -->Copyright &copy; 2008 <strong>me.</strong></td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
OUT;
        }

    }

class Work_withDB   //класс для работы с базой данных
    {

    function ConnectDB()  //функция подключения к базе данных
        {
        include_once("logindata.php");
        $link = mysqli_connect(SQLSERVER, SQLLOGIN, SQLPASSWORD, SQLDB);
        return $link;
        }

    function ShowCategories() //показ категорий в меню
        {
        $link = $this->ConnectDB();
        $query = mysqli_query($link, "SELECT * FROM Categories");
        while ($row = mysqli_fetch_array($query)) {
            if ($row[Accomp] == 0)
                {
                echo ("<tr><td height='22' background='images/g1.jpg' style='background-repeat:no-repeat'>");
                echo ("<table width='100%'  border='0' cellspacing='0' cellpadding='0'>");
                echo ("<tr><td width='16%' align='right' valign='top'><img src='images/a1.jpg' width='11' height='12'></td>");
                echo ("<td width='84%'><a href='categories.php?cid={$row['CategoryID']}' style='color:#362F2D; text-decoration:none'>{$row["CategoryName"]}</a></td>");
                echo ("</tr></table></td></tr>");
                }
        }
        }

    function ShowCategoriesAcc() //показ сопутствующих товаров
        {
        $link = $this->ConnectDB();
        $query = mysqli_query($link, "SELECT * FROM Categories");
        while ($row = mysqli_fetch_array($query)) {
            if ($row[Accomp] == 1)
                {
                echo <<<OUT
          <tr>
            <td height="22" background="images/g1.jpg" style="background-repeat:no-repeat ">
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="16%" align="right" valign="top"><img src="images/a1.jpg" width="11" height="12"></td>
                <td width="84%"><a href='categories.php?cid={$row['CategoryID']}' style='color:#362F2D; text-decoration:none'>{$row[CategoryName]}</a></td>
              </tr>
            </table>
            </td>
          </tr>
OUT;
                }
        }
        }

    function ShowProducts($cid)   //показ всех товаров в категории
        {
        $link = $this->ConnectDB();
        $query = mysqli_query($link, "SELECT * FROM Products WHERE CategoryID = $cid ORDER BY ProductName");
        if (mysqli_num_rows($query) == 0)
            {
            echo <<<OUT
              <table width="370" border="0" cellspacing="1" cellpadding="1"><tr>
                    <td align='center' valign='center'>
                      <strong><font size=+2>В данной категории пока нет товаров!</font></strong>
                    </td>
              </tr></table>
OUT;
            } else
            {
            echo<<<OUT
               <table width="120" border="0" cellspacing="1" cellpadding="1"><tr>
OUT;
            $index = 0;
            $row_close = false;
            while ($row = mysqli_fetch_array($query)) {
                if (strlen($row['ProductSmallImage']) < 1)
                    {
                    $img_product_image = './images/small/no_image.jpg';
                    } else
                    {
                    $pid = "small_" . $row['ProductID'];
                    $img_product_image = $row['ProductSmallImage'];
                    }

                if ($index % 3 == 0)
                    {
                    echo("<tr>");
                    }
                $pid = $row['ProductID'];
                echo<<<OUT
                 <td width='120' height='81' background='images/product_back.jpg' style='background-repeat:no-repeat'>
                    <table width="120" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width='80' align='center' valign='center'><a href='products.php?pid={$row[ProductID]}&cid={$row[CategoryID]}'><img src='$img_product_image' border='0' alt='{$row['ProductName']}' title='{$row['ProductName']}'></a>
                        </td>
                        <td width='40' valign='bottom'><strong>{$row['ProductPrice']} грн.</strong>
                        </td>
                    </tr>
                    </table>
                 </td>
OUT;
                $index ++;
                $row_close = false;
                if ($index % 3 == 0)
                    {
                    echo("</tr>");
                    $row_close = true;
                    }
            }
            if ($index == 2)
                {
                echo("<td width='120'><img src='images/spacer120.gif'></td>");
                }
            if ($index == 1)
                {
                echo("<td width='120'><img src='images/spacer120.gif'></td>");
                echo("<td width='120'><img src='images/spacer120.gif'></td>");
                }
            if ($row_close)
                {
                echo("</tr>");
                }
            echo("</table></td>");
            }
        }

    function ShowTopSale()   //показ топ-продаж
        {
        $link = $this->ConnectDB();
        $query = mysqli_query($link, "SELECT * FROM Topsale");

        echo <<<OUT
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td background="images/fe.jpg" height="23" align="center"><div style="text-transform:uppercase; color: #534741; font-size:20">ХИТЫ продаж</div>
            </td>
          </tr>
OUT;
        while ($row = mysqli_fetch_array($query)) {
            $query_product = mysqli_query($link, "SELECT * FROM Products WHERE ProductID = '$row[ProductID]'");
            $product = mysqli_fetch_array($query_product);
            if (strlen($product['ProductSmallImage']) < 1)
                {
                $img_product_image = './images/small/no_image.jpg';
                } else
                {
                //$pid = "small_" . $product['ProductID'];
                $img_product_image = $product['ProductSmallImage'];
                }

            echo <<<OUT
         <tr>
            <td height="101" valign="top" background="images/product_back_topsale.jpg" style="background-repeat:no-repeat">
            <table width='100%' border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width='100%'>
                    <table width="100%" border="0" cellspacing="0" cellpadding="2">
                        <tr>
                            <td width="80" height="93" align="right"><a href='products.php?pid={$product[ProductID]}&cid={$product[CategoryID]}'><img src='$img_product_image' alt='{$product[ProductName]}' title='{$product[ProductName]}' width='78' border='0'></a>
                            </td>
                            <td valign="bottom"><span class="style7">{$product[ProductName]}</span><br>
                              <span class="style6">Цена: {$product[ProductPrice]} грн.</span>
                            </td>
                        </tr>
                    </table>
                 </td>
            </tr>
            </table>
            </td>
          </tr>

OUT;
        }
        echo <<<OUT
        </table>
OUT;
        }

    function ShowProductDetail($pid, $cid)  //детальный показ товаров
        {
        $link = $this->ConnectDB();
        $query = mysqli_query($link, "SELECT * FROM Products WHERE ProductID = $pid");
        $row = mysqli_fetch_array($query);
        if (strlen($row['ProductBigImage']) < 1)
            {
            $img_product_image = './images/big/no_image.jpg';
            } else
            {
            $pid = "big_" . $row['ProductID'];
            $img_product_image = $row['ProductBigImage'];
            }
        $bid = $row['BrandID'];
        $product_info = explode("_", $row['ProductInfo']);
        $query = mysqli_query($link, "SELECT * FROM Brands WHERE BrandID = $bid");
        $row_brand = mysqli_fetch_array($query);

        echo<<<OUT
       <table width="370" border="0" cellspacing="1" cellpadding="1">
        <tr>
            <td>
              <img src='$img_product_image' width='360'>
            </td>
        </tr>
        <tr>
            <td align='left'>
               <strong>Наименование: </strong> {$row[ProductName]}
            </td>
        </tr>
        <tr>
            <td align='left'>
                <strong>Описание:</strong> {$row[ProductInfo]}
            </td>
        </tr>
        <tr>
            <td align='center'>
                <strong><font size=+2>{$row[ProductPrice]} грн.</font></strong>
            </td>
        </tr>
       </table>
OUT;
        echo <<<OUT
        <table width="370" border="0" cellspacing="1" cellpadding="1">
            <tr>
                <td>
OUT;
        $query_allincategory = mysqli_query($link, "SELECT * FROM Products WHERE CategoryID=$cid");
        while ($row_all = mysqli_fetch_array($query_allincategory)) {
            echo ("<a href='products.php?pid={$row_all[ProductID]}&cid={$row_all[CategoryID]}' style='text-decoration:none'><strong>{$row_all[ProductName]}</strong></a> | ");
        }
        echo <<<OUT
                </td>
            </tr>
        </table>
OUT;
        }

    }
?>