<%@ page language="java"
	contentType="text/html; charset=utf-8"
	import="java.util.Date,
	us.mn.state.health.lims.common.action.IActionConstants,
	us.mn.state.health.lims.common.util.SystemConfiguration,
	us.mn.state.health.lims.common.util.StringUtil" %>

<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/labdev-view" prefix="app" %>
<%@ taglib uri="/tags/sourceforge-ajax" prefix="ajax"%>

<bean:define id="formName" value='<%= (String)request.getAttribute(IActionConstants.FORM_NAME) %>' />

<script language="JavaScript1.2">
    function validateForm(form) {
        return validateLoginForm(form);
    }

function submitOnEnter(e){

 if (enterKeyPressed(e)) {
   var button = document.getElementById("submitButton");
   e.returnValue=false;
   e.cancel = true;
   button.click();
 }

}


function submitOnClick(button){
     setAction(window.document.forms[0], 'Validate', 'yes', '');
}

</script>
<style>

.elis-login-text {
  text-align: center;
  font-size: 22px;
  font-weight: 900;
  position: relative;
  top: 10px;
  left: 0;
  width: 100%;
}

.elis-wrapper{
    margin-right:auto;
  height: 100%;
}
    </style>
    <div class=elis-wrapper>
<table width="100%" style="margin: 0 auto" align="center">
    <tr>
        <td align="center" valign="top">
						<img src="images/flag_of_mozambique.png" alt="flag" height="100px"
						width="150px" /><br/>
        </td>
    </tr>
    <tr>
		<td width="50%" style="margin: 0 auto">
            <table width="100%" style="margin: 0 auto" align="center">
				<tr>
					<td colspan="3" align=center style="padding-bottom:0.5%" >
					  <p class=elis-login-text style="color: #669999;">  <bean:message key="LOGIN_PAGE_HEADER_TEXT_1"/><br>
					   <bean:message key="LOGIN_PAGE_HEADER_TEXT_2"/><br>
						<bean:message key="LOGIN_PAGE_HEADER_TEXT_3"/></p>
					</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
                <%= StringUtil.getContextualMessageForKey("login.notice.notification") %>
        </td>
    </tr>
</table>
        <table style="margin-left: 35%;margin-right: 35%">
        <tr>
            <td width="20%">&nbsp;</td>
            <td width="10%" style="font-size: 15px" noWrap><b><bean:message key="login.msg.userName"/>:<b></td>
            <td colspan="2" align="left">
                <%--bugzilla 2173, 2376--%>
                <html:text name="<%=formName%>" property="loginName" onkeypress="submitOnEnter(event)"/>
            </td>
        </tr>
        <tr>
            <td width="20%" >&nbsp;</td>
            <td width="10%" style="font-size: 15px"noWrap><b><bean:message key="login.msg.password"/>:</b></td>
            <td colspan="2" align="left">
                <%--bugzilla 2173, 2376--%>
                <html:password name="<%=formName%>" property="password" onkeypress="submitOnEnter(event)"/>
            </td>
        </tr>
        </table>
    </td>
</tr>
</table>

<app:javascript formName="loginForm"/>

</div>
