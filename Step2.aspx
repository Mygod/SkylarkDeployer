<%@ Page Title="第二步" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function isNullOrWhiteSpace(input) {
            if (!input) return true;
            return input.replace(/\s/g, '').length < 1;
        }

        function getQueryStringRegExp(name) {
            var reg = new RegExp("(^|\\?|&)" + name + "=([^&]*)(\\s|&|$)", "i");
            if (reg.test(location.href)) return unescape(RegExp.$2.replace(/\+/g, " "));
            return "";
        };

        function toggleRegionField() {
            var field = $('#region-field');
            if (this.checked) {
                if (!field.is(':hidden')) field.slideToggle(500);
            }
            else if (field.is(':hidden')) field.slideToggle(500);
        }

        $(function () {
            var code = getQueryStringRegExp('code');
            if (isNullOrWhiteSpace(code)) location.href = '/';
            $('#code').val(code);
            $('#redeploy').change(toggleRegionField);
            toggleRegionField();
        });
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="body" runat="server">
    <section>
        <h3>第二步：配置您的 云雀™</h3>
        <div>
            干得漂亮！在接下来一步中你将会对你的 云雀™ 进行一些简单的配置，部分配置一旦确认将无法修改。
            (不过你可以抛弃掉这个重新申请一个，反正是免费的！)
        </div>
        <form method="post" action="/3/">
            <fieldset>
                <input type="hidden" id="code" name="code" />
                <label>名称</label>
                <div class="input-control text">
                    <input type="text" name="name" required="required" placeholder="My Skylark" />
                    <button class="btn-clear"></button>
                    <br />
                    <small>
                        说明：这一项也将作为您的域名，因此你也可以打空格，但是作为域名时会变成全小写且空格会被删除。如
                        My Skylark 的域名将为 myskylark.apphb.com。如果域名已经被占用，你的域名可能会变为
                        name-x.apphb.com，其中 name 是你原来应得的域名，x 是一个自然数。域名一旦确认不可更改。
                    </small>
                </div>
                <label>AppHarbor 密码</label>
                <div class="input-control password">
                    <input type="password" name="password" required="required" />
                    <button class="btn-reveal"></button>
                    <br />
                    <small>
                        说明：我们需要临时使用您的密码以便于我们为您的 云雀™
                        推送我们<a href="https://github.com/Mygod/SkylarkDeployer/tree/master/Content">邪恶的代码</a>。
                        <br />
                        免责声明：Mygod 工作室™
                        不会存储/利用/传播您的密码，您的密码仅用于临时使用。但您的密码在传输过程中可能会被人监听，如果您想要
                        100% 的安全，推荐您在完成部署后在 AppHarbor 修改您的密码。
                    </small>
                </div>
                <label>重部署</label>
                <div class="input-control switch">
                    <label class="inline-block">
                        <input type="checkbox" id="redeploy" name="redeploy" value="redeploy" />
                        <span class="check"></span>
                    </label>
                    <br />
                    <small>
                        说明：如果您把您的 云雀™ 拆了且希望重装，使用重部署将不会再创建一个新的
                        云雀™，您需要在名称内填写域名，尤其是当您的域名是 name-x 的形式时。如果你想修改您的 云雀™
                        的故乡，请在 AppHarbor 中删除您的 云雀™ 然后重新部署一个新的。<br />
                        警告：重部署后您的 云雀™ 中的文件、设置将被全部删除，请做好备份！
                    </small>
                </div>
                <div id="region-field">
                    <label>故乡</label>
                    <div class="input-control radio default-style">
                        <label class="inline-block">
                            <input type="radio" name="region" value="amazon-web-services::us-east-1"
                                   checked="checked" />
                            <span class="check"></span> 美国东部
                        </label>
                        <label class="inline-block">
                            <input type="radio" name="region" value="amazon-web-services::eu-west-1" />
                            <span class="check"></span> 欧洲西部
                        </label>
                        <label class="inline-block">
                            <input type="radio" name="region" value="amazon-web-services::us-east-1::beta" />
                            <span class="check"></span> 美国东部 (测试环境)
                        </label>
                        <br />
                        <small>说明：云雀™ 服务器的所在地，一旦确认不可更改。</small>
                    </div>
                </div>
                <div class="center"><input type="submit" value="提交并完成任务" /></div>
            </fieldset>
        </form>
    </section>
</asp:Content>
