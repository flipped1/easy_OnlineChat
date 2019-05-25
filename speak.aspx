<script language="C#" runat="server">
	void Enter_Click(Object Sender,EventArgs E)
	{
		if(Application["show"]==null)
		{
		   Application["show"]="欢迎进入聊天室";
		}
		
		Application.Lock();
		Application["show"]=m.SelectedItem.Text+pronunciation.Text + "<br>" + Application["show"].ToString();
		Application.UnLock();

		pronunciation.Text=" ";    //将发言框清空
	}
</script>


<html>
<body>
	<form runat="server">
	请发言：<asp:textbox id="pronunciation" columns="20" runat="server" />
	<asp:button text="发送" onclick="Enter_Click" runat="server" />
	心情：<asp:DropDownList id="m" runat="server"  Width="80"  Height="40" AutoPostBack="True">
    		<asp:ListItem>高兴地说</asp:ListItem>
    		<asp:ListItem>委屈地说</asp:ListItem>
    		<asp:ListItem>害羞地说</asp:ListItem>
	</asp:DropDownList>
	</form>
</body>
</html>