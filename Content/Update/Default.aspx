<%@ Page Language="C#" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Diagnostics" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Text" %>
<%
    File.WriteAllText(Server.MapPath("~/Update/deploy.log"),
                      "处理已开始，刷新此页面查看进度。" + Environment.NewLine, Encoding.UTF8);
    Process.Start(new ProcessStartInfo(Server.MapPath("~/Update/SkylarkUpdater.exe"), "deploy")
        { WorkingDirectory = Server.MapPath("~/") });
    Response.Redirect("deploy.log");
%>