<script language="C#" runat="server">
	void Enter_Click(Object Sender,EventArgs E)
	{
		if(Application["show"]==null)
		{
		   Application["show"]="��ӭ����������";
		}
		
		Application.Lock();
		Application["show"]=m.SelectedItem.Text+pronunciation.Text + "<br>" + Application["show"].ToString();
		Application.UnLock();

		pronunciation.Text=" ";    //�����Կ����
	}
</script>


<html>
<body>
	<form runat="server">
	�뷢�ԣ�<asp:textbox id="pronunciation" columns="20" runat="server" />
	<asp:button text="����" onclick="Enter_Click" runat="server" />
	���飺<asp:DropDownList id="m" runat="server"  Width="80"  Height="40" AutoPostBack="True">
    		<asp:ListItem>���˵�˵</asp:ListItem>
    		<asp:ListItem>ί����˵</asp:ListItem>
    		<asp:ListItem>���ߵ�˵</asp:ListItem>
	</asp:DropDownList>
	</form>
</body>
</html>