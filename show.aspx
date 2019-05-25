<script language="C#" runat="server">
	void Page_Load(Object Sender,EventArgs E)
	{
	  if(Application["show"]==null)
	     {
		Application["show"]="»¶Ó­½øÈëÁÄÌìÊÒ";
	      }
	  message.Text=Application["show"].ToString();
	}
</script>

<html>
<head>
	<meta http-equiv="refresh" content="5">
</head>
<body>
	<from runat="server">
		<asp:label id="message" runat="server"/>
	</from>
</body>
</html>