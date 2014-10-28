<%@ Page Title="第二步" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="body" runat="server">
    <section>
        <h3>第二步：配置您的 云雀™</h3>
        <div>
            干得漂亮！在接下来一步中你将要输入您的 云雀™ 的一些信息。
        </div>
        <form method="post" action="/3/">
            <fieldset>
                <input type="hidden" id="code" name="code" />
                <label>名称</label>
                <div class="input-control text">
                    <input type="text" name="name" required="required" placeholder="My Skylark"
                           pattern="( *[^ ]){3,255} *" title="名称中的有效字符，即非空格字符应有 3 至 255 个。" />
                    <button class="btn-clear"></button>
                    <br />
                    <small>
                        说明：这一项应该和您的域名一致，而不是您申请时填写的域名，如 myskylark-3.apphb.com 应填写 myskylark-3。名称中的有效字符，即非空格字符应有 3 至 255 个。
                    </small>
                </div>
                <label>操作</label>
                <div class="input-control radio default-style">
                    <label class="inline-block">
                        <input type="radio" name="operation" value="deploy" disabled="disabled" />
                        <span class="check"></span> 部署
                    </label>
                    <label class="inline-block">
                        <input type="radio" name="operation" value="redeploy" disabled="disabled" />
                        <span class="check"></span> 重部署
                    </label>
                    <label class="inline-block">
                        <input type="radio" name="operation" value="delete" checked="checked" />
                        <span class="check"></span> 删除
                    </label>
                    <br />
                    <small>
                        说明：由于 AppHarbor 介入，目前仅支持删除您已经部署好的 云雀™。<br />
                        警告：重部署/删除后您的 云雀™ 中的文件、设置将被全部删除，请做好备份！
                    </small>
                </div>
                <div class="center"><input type="submit" value="提交并完成任务" /></div>
            </fieldset>
        </form>
    </section>
</asp:Content>
