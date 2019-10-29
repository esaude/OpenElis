<%@ page language="java"
	contentType="text/html; charset=utf-8"
	import="us.mn.state.health.lims.common.action.IActionConstants"
%>

<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/labdev-view" prefix="app" %>
<style>
    .power-by{
        position: fixed;
width: 100%;
bottom: 0;
text-align: center;
background: #fafafa;
padding-bottom: 5px;
font-size: 12px;
color: #898989;}
a {
  color: #000;
}

    </style>
<table width="95%">
<tr><td colspan="4">&nbsp;</td>
<tr>
    <td width="20%">&nbsp;</td>	
    <td width="27%">&nbsp;</td>
    <td colspan="2" >
        <%--bugzilla 2376--%>
        <html:button property="save" styleId="submitButton" onclick="submitOnClick(this);return false;">
  			       <bean:message key="label.button.submit"/>
  		</html:button>
        <html:button property="changePassword" styleId="changePasswordButton" onclick="setAction(window.document.forms[0], 'ChangePassword', 'no', '');" >
  		    <bean:message key="label.button.changePassword"/>
  		</html:button>
    </td>        
</tr>         
</table>

<div class="power-by">
        <img src="images/bahmniLogoFull.png" alt="Bahmni" style=" width: 55px;
  vertical-align: middle;
  margin: 0 1px;"/>
        <a href="http://www.misau.gov.mz/"> Ministério da Saúde (MISAU)</a> O nosso maior valor é a vida. <span style="color:black;font-weight:bold;">Versão:2.0.0</span>
    </div>