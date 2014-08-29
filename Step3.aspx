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
        <h4>常见问题</h4>
        <ul>
            <li>
                尝试更新时出现 404 Not Found 或 Welcome to nginx？<br />
                请尝试点击 开始 - 运行，输入 <code>ipconfig /flushdns</code> 回车，再刷新；<br />
                如果你使用的是 Chrome，请打开 <a href="chrome://net-internals/#dns" target="_blank">chrome://net-internals/#dns</a>，点击 Clear host cache 后再刷新；<br />
                若无效，说明云端还未部署完成，请稍后再试。
            </li>
            <li>
                更新后出现 <code>The current identity (...) does not have write access to 'C:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files'.</code>？<br />
                这是因为更新还没完成，请稍等片刻再次刷新。
            </li>
        </ul>
        <% } %>
    </section>
</asp:Content>
