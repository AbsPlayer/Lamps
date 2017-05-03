<?php
include_once ('logindata.php');
echo <<<OUT
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="87"><img src="images/spacer.gif" width="4" height="1"></td>
            <td width="100%" valign="top"><img src="images/cv.jpg" width="361" height="179"></td>
            <td><img src="images/spacer.gif" width="4" height="1"></td>
          </tr>
          <tr>
            <td height="65">&nbsp;</td>
            <td height="65" valign="top" background="images/cxvl.jpg" style="background-repeat:no-repeat ">
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="45%" height="50">&nbsp;</td>
                <td width="55%">
                Этот сайт посвящён декоративному освещению</td>
              </tr>
            </table>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="19">&nbsp;</td>
            <td height="19" valign="middle" align='center' style="background-repeat:no-repeat ">&nbsp;&nbsp;<span style="text-transform:uppercase"><span class="style3">Дополнительные услуги: </span></span></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td ></td>
            <td  valign="top" style="background-repeat:no-repeat "><img src="images/iop.jpg" width="361" height="10"></td>
            <td></td>
          </tr>
          <tr>
            <td height="175" ></td>
            <td  valign="top" style="background-repeat:no-repeat ">
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="images/spacer.gif" width="1" height="3"></td>
              </tr>
            </table>
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr valign="top">
                  <td style='padding-left:15'>
                  <strong><div style="text-transform:uppercase; color: #534741;">Доставка по городу:&nbsp;&nbsp;&nbsp; 
OUT;
        echo (DELIVERY);
echo <<<OUT
                  грн.</div></strong>
                  </td>
                </tr>
                <tr>
                  <td><img src="images/spacer.gif" width="1" height="5"></td>
                </tr>
                <tr valign="top">
                  <td style='padding-left:15'>
                  <strong><div style="text-transform:uppercase; color: #534741;">Сборка и установка:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
OUT;
        echo (INSTALL);
echo <<<OUT
                  грн.</div></strong>
                  </td>
                </tr>
              </table>
              </td>
            <td></td>
          </tr>
        </table>
OUT;
?>