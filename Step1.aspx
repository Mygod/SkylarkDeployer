﻿<%@ Page Title="第一步" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="body" runat="server">
    <section>
        <h2>欢迎使用 云雀™ 部署器！</h2>
        <div>
            不必担心！Mygod 工作室™ 深深地知道如今广大用户都喜欢做任务拿经验，因此要删除 云雀™ 只需简简单单的一二三！
        </div>
    </section>
    <section>
        <h2>第一步：登录/注册 AppHarbor 并授权</h2>
        <div>在这一简单的步骤中，你将需要点击下面的链接并登录/注册帐号并授权即可。在这个过程中你也许很可能会遇到一些十分简单的英语，不必恐慌。</div>
        <div class="center">
            <form action="https://appharbor.com/user/authorizations/new">
                <input type="hidden" name="client_id" value="044928e2-f4f7-4209-bdb6-388129e19fb0" />
                <input type="hidden" name="redirect_uri" value="http://skylarkdeployer.apphb.com/2/" />
                <button type="submit" class="large command-button">
                    <i class="icon-rocket on-left"></i>按下这个巨大的<br />按钮去做任务！
                </button>
            </form>
        </div>
    </section>
    <section>
        <h3>为 Geeks 特制的说明</h3>
        <div>Mygod 工作室™ 将使用您的账号进行以下不可见人的操作，您的信息将会在完成任务后销毁：</div>
        <ul>
            <li>获得您账户的 token；</li>
            <li>删除你的应用；</li>
            <li>???</li>
            <li>Profit!</li>
        </ul>
    </section>
</asp:Content>
