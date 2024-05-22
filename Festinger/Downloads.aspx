<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Downloads.aspx.cs" Inherits="Downloads" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <!-- Begin Promotion Box -->
    <div id="promo">
        <div class="promocontent">
            <h1>
                <br />
            </h1>
            <h1 style="color: rgb(0, 0, 102);">
                Downloads</h1>
            <br style="color: rgb(0, 0, 0);" />
            <strong><span style="color: rgb(0, 0, 0);">&nbsp;&nbsp; Click one of the buttons to
                download Historia.<br />
                &nbsp;&nbsp; First button is for Windows Mobile Proffesional devices or Pocket PC
                Phone Edition.<br />
                &nbsp;&nbsp; Second button is for Windows Mobile Standard or Smartphones.<br />
                &nbsp;&nbsp; Third button is a basic version.<br />
            </span>
                <br style="color: rgb(0, 0, 0);" />
            </strong>
            <br />
            <table id="tableForButtons" align="center">
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="ButtonPro" runat="server" Text="Download Historia 3.2.1" OnClick="ButtonPro_Click" CausesValidation="False"
                            EnableViewState="False" />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelPro" runat="server" Font-Size="x-Small" ForeColor="DarkViolet"
                            Style="text-align: left" Text="Downloaded so far:" Width="208px" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="ButtonStandard" runat="server" Text="Download Historia 2.1.4" OnClick="ButtonStandard_Click" CausesValidation="False"
                            EnableViewState="False" />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelStandard" runat="server" Style="text-align: left" Font-Size="x-Small"
                            ForeColor="DarkViolet" Text="Downloaded so far:" Width="208px" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button1_11" runat="server" Text="Download Historia 1.1.1" CausesValidation="False"
                            EnableViewState="False" PostBackUrl="~/Historia1/Downloads.aspx" />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelFreeware" runat="server" Font-Size="X-Small" ForeColor="DarkViolet"
                            Style="text-align: left" Text="Downloaded so far:" Width="208px" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
            </table>
            <div style="text-align: center;">
                <div style="text-align: left;">
                    <span style="font-weight: bold;">
                        <br />
                        &nbsp;&nbsp; Historia supports all Windows Mobile versions: WM 6.1, WM6, WM 5, PocketPC
                        2003 SE Phone Edition, PocketPC 2003 Phone Edition.<br />
                        &nbsp; &nbsp; Make sure first you have .NET Compact Framework 2 installed.
                        <br />
                        <br />
                    </span>
                </div>
            </div>
            <span style="color: rgb(0, 0, 0);">
                <br />
                <br />
            </span>
            <h3 style="text-align: left; color: rgb(0, 0, 102);">
                Registering</h3>
            <br />
            &nbsp;&nbsp;&nbsp; <font size="+1"><span style="color: rgb(255, 0, 0);">Now it's a Freeware,
                Completely Free!!!</span></font><br />
            <br />
            <span style="color: rgb(0, 0, 0);"></span><span style="color: rgb(0, 0, 0);">
                <br />
                <br />
                <br />
            </span>
            <div style="text-align: center;">
                <div style="text-align: left;">
                </div>
            </div>
            <h3 style="text-align: left; color: rgb(0, 0, 102);">
                Installation Instructions</h3>
            <div class="widecontent">
                <ol style="color: rgb(0, 0, 0);">
                    <li><strong>If you don't have at least .NET Compact Framework 2.0 SP1 installed, you
                        have to download and install it first before you can run Historia, you can download
                        SP2 from here:<br />
                        &nbsp;</strong><a target="_blank" style="color: rgb(51, 51, 255);" href="http://www.microsoft.com/downloads/details.aspx?familyid=e3821449-3c6b-42f1-9fd9-0041345b3385&amp;displaylang=en&amp;tm"><strong>Dot
                            NET Compact Framework 3.5(Microsoft Site)</strong></a><span style="color: rgb(51, 51, 255);"><strong>&nbsp;</strong></span><a
                                style="color: rgb(51, 51, 255);" href="files/NETCFSetupv2sp2.msi"><br />
                            </a></li>
                    <li><strong>Download Historia clicking one of the buttons on top. Unzip the file, and
                        run Setup.exe , don't copy it to the device, it will be installed with Activesync,
                        follow the on screen instructions. </strong></li>
                    <li><strong>Enter your device ID in this box, choose the version you use and click the
                        button to get your key number. </strong></li>
                    <li><strong>Enter the key number and choose Register on the logon screen of Historia.
                    </strong></li>
                </ol>
                <br />
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table align="center" style="background-color: transparent; font-size: 100%;">
                        <tr>
                            <td align="left" style="width: 246px; background-color: Navy;">
                                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Key Number:" Width="241px"
                                    ForeColor="White"></asp:Label><br />
                                &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Device ID:" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 246px; background-color: Navy;" valign="top">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="White">
                                    <asp:ListItem Selected="True">Historia 3.2.1</asp:ListItem>
                                    <asp:ListItem>Historia 2.1.4</asp:ListItem>
                                </asp:RadioButtonList>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 246px; background-color: transparent;" align="center">
                                <asp:Button ID="ButtonGenerator" runat="server" Text="Generate Key" OnClick="Button1_Click" CausesValidation="False"
                                    EnableViewState="False" />
                                &nbsp;
                            </td>
                            <td>
                                <asp:Label ID="LabelGenerator" runat="server" Font-Bold="True" Width="179px" Text="Clicked so far:"
                                    ForeColor="DarkViolet" Font-Size="X-Small"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
                     <br />
                    <br />
                    <br />
                    <br />
        </div>
    </div>
</asp:Content>
