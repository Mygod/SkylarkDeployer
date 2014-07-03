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
        <% Process();
           if (Success)
           { %>
        <div>&nbsp;</div>
        <h4>常见问题</h4>
        <ul>
            <li>尝试更新时出现 404 Not Found？<br />请尝试点击 开始 - 运行，输入 ipconfig /flushdns 回车，再刷新；若无效，说明云端还未部署完成，请稍后再试。</li>
        </ul>
        <% } %>
    </section>
</asp:Content>
