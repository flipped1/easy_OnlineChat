<%@ Page Language="c#" Debug="true" %>
<script runat="server">
void Enter_Click(Object Sender,EventArgs E)
{
string user_name;
user_name=username.Text;
Session["user_name"]=user_name+"<p>"+Session["user_name"];
Response.Redirect ("frame.aspx");
}
</script>
<html>
<head>
	<title>登录</title>
</head>

<body>
	<div align=center runat=server>
		<h3>登录进入聊天室</h3>
		<form runat=server>
			请输入您的用户名：
			<asp:TextBox id="username" runat="server" />
			<P>
			请输入您的密码：  
			<asp:TextBox id="password" runat="server" />
			<p>
			<asp:Button id="submit" runat="server" Onclick="Enter_Click" Text="提交"  />
		</form>
	</div>
</body>
</html>