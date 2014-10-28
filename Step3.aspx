<%@ Page Title="第三步" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
         CodeBehind="Step3.aspx.cs" Inherits="Mygod.Skylark.Deployer.Step3" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="body" runat="server">
    <section>
        <h3>第三步：耐心等待</h3>
        <div>
            请稍等片刻，我们将为您配置您的
            云雀™……出现了问题？请<a href="/">重试</a>，若重试无效请与开发者联系。（如通过官网
            <a href="http://mygod.tk/skylark/#disqus_thread">云雀™ 页面的留言板</a>）
        </div>
        <div>连接 AppHarbor 中……</div>
        <% Process(); %>
    </section>
</asp:Content>
