<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="網二_期中作業.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" BackColor="#CCFFFF" Font-Size="XX-Large" ForeColor="#000099" Text="檢查方案"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="30px" Width="300px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="Red" Text="報到須知"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="Red" Text="健檢準備"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Table ID="Table1" runat="server" Height="150px" style="margin-right: 0px" Visible="False" Width="752px" BorderColor="Black" BorderWidth="1px">
                <asp:TableRow runat="server" BackColor="#3399FF" BorderWidth="1px" Font-Bold="True" ForeColor="White">
                    <asp:TableCell runat="server">檢查項目	</asp:TableCell>
                    <asp:TableCell runat="server">臨床參考之意義</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF" BorderWidth="1px" Font-Size="10pt">
                    <asp:TableCell runat="server">一般檢查</asp:TableCell>
                    <asp:TableCell runat="server">身體的初步評估，以了解基本功能狀況。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF" BorderWidth="1px">
                    <asp:TableCell runat="server" Font-Size="10pt">醫師理學檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">甲狀腺、淋巴腺、心雜音、皮膚、靜脈曲張、氣喘、腹部、肺部、下肢水腫疾病等。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">眼科 視力 聽力檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">利用氣體吹到角膜、視其對角膜之抗力來測量眼壓，臨床上可作為是否有青光眼的重要參考。視力、色盲。兩耳聽力損失程度測定。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">糞便檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢測出隱藏在大便中血液的檢驗，確認有無腸胃道出血。此方法的敏感性非常高，能精確的檢測到糞便中20ng/ml血紅的含量。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">尿液常規檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">尿路感染或發炎、急慢性腎炎、腎功能不良、糖尿病、泌尿道結石、腎病變症候群等之篩檢、泌尿道疾病檢查。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">血液常規檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">貧血分類(如缺鐵性、海洋性貧血)、血液凝固功能、白血病(血癌)、血小板缺少紫斑病、細菌性感染、免疫性疾病。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">肝功能檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢查是否有急慢性肝炎、肝硬化、肝膽功能異常、肝腫瘤及膽道阻塞、營養狀態等症狀。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">膽囊功能檢查	</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">膽道阻塞、膽結石、膽管炎、黃疸症、肝病變、肝炎。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">腎功能檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">急慢性腎炎、腎衰竭、尿毒症、腎臟機能障礙。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">甲狀腺功能檢查	</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">	檢測甲狀腺機能亢進或低下症。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">癌症標記篩檢</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">肝硬化、肝癌等初步參考指標。腸、胃、肺、胰等腫瘤初步參考指標。卵巢癌、子宮內膜癌或發炎、良性瘤。攝護腺癌或攝護腺發炎的初步參考指標。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">胃幽門桿菌檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">可瞭解胃內是否有幽門桿菌感染。此菌易造成胃潰瘍、胃炎、胃癌、12指腸潰瘍。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">動脈硬化檢測</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">動脈硬化程度、阻塞性動脈硬症、腦中風。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCCCFF">
                    <asp:TableCell runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Black">價格</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True" Font-Italic="True" Font-Size="10pt" ForeColor="Red">6000</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table2" runat="server" Height="150px" style="margin-right: 0px" Visible="False" Width="752px" BorderColor="Black" BorderWidth="1px">
                <asp:TableRow runat="server" BackColor="#3399FF" BorderWidth="1px" Font-Bold="True" ForeColor="White">
                    <asp:TableCell runat="server">檢查項目	</asp:TableCell>
                    <asp:TableCell runat="server">臨床參考之意義</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF" BorderWidth="1px" Font-Size="10pt">
                    <asp:TableCell runat="server">一般檢查</asp:TableCell>
                    <asp:TableCell runat="server">身體的初步評估，以了解基本功能狀況。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF" BorderWidth="1px">
                    <asp:TableCell runat="server" Font-Size="10pt">醫師理學檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">甲狀腺、淋巴腺、心雜音、皮膚、靜脈曲張、氣喘、腹部、肺部、下肢水腫疾病等。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">眼科 視力 聽力檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">利用氣體吹到角膜、視其對角膜之抗力來測量眼壓，臨床上可作為是否有青光眼的重要參考。視力、色盲。兩耳聽力損失程度測定。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">糞便檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢測出隱藏在大便中血液的檢驗，確認有無腸胃道出血。此方法的敏感性非常高，能精確的檢測到糞便中20ng/ml血紅的含量。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">尿液常規檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">尿路感染或發炎、急慢性腎炎、腎功能不良、糖尿病、泌尿道結石、腎病變症候群等之篩檢、泌尿道疾病檢查。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">血液常規檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">貧血分類(如缺鐵性、海洋性貧血)、血液凝固功能、白血病(血癌)、血小板缺少紫斑病、細菌性感染、免疫性疾病。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">肝功能檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢查是否有急慢性肝炎、肝硬化、肝膽功能異常、肝腫瘤及膽道阻塞、營養狀態等症狀。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">膽囊功能檢查	</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">膽道阻塞、膽結石、膽管炎、黃疸症、肝病變、肝炎。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">腎功能檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">急慢性腎炎、腎衰竭、尿毒症、腎臟機能障礙。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">甲狀腺功能檢查	</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">	檢測甲狀腺機能亢進或低下症。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">癌症標記篩檢</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">肝硬化、肝癌等初步參考指標。腸、胃、肺、胰等腫瘤初步參考指標。卵巢癌、子宮內膜癌或發炎、良性瘤。攝護腺癌或攝護腺發炎的初步參考指標。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">胃幽門桿菌檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">可瞭解胃內是否有幽門桿菌感染。此菌易造成胃潰瘍、胃炎、胃癌、12指腸潰瘍。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">動脈硬化檢測</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">動脈硬化程度、阻塞性動脈硬症、腦中風。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">有感內視鏡檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">胃炎、胃潰瘍、胃癌、12指腸潰瘍、幽門螺旋桿菌檢查。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">婦科會診(女性)</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">初步子宮頸癌篩檢。是否有子宮肌瘤、卵巢瘤或其他異常病變等。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCCCFF">
                    <asp:TableCell runat="server" Font-Bold="True" Font-Size="10pt">價格</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True" Font-Italic="True" Font-Size="10pt" ForeColor="#FF3300">8500</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            
            <asp:Table ID="Table3" runat="server" Height="150px" style="margin-right: 0px" Visible="False" Width="752px" BorderColor="Black" BorderWidth="1px">
                <asp:TableRow runat="server" BackColor="#3399FF" BorderWidth="1px" Font-Bold="True" ForeColor="White">
                    <asp:TableCell runat="server">檢查項目	</asp:TableCell>
                    <asp:TableCell runat="server">臨床參考之意義</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF" BorderWidth="1px" Font-Size="10pt">
                    <asp:TableCell runat="server">一般檢查</asp:TableCell>
                    <asp:TableCell runat="server">身體的初步評估，以了解基本功能狀況。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF" BorderWidth="1px">
                    <asp:TableCell runat="server" Font-Size="10pt">醫師理學檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">甲狀腺、淋巴腺、心雜音、皮膚、靜脈曲張、氣喘、腹部、肺部、下肢水腫疾病等。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">眼科 視力 聽力檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">利用氣體吹到角膜、視其對角膜之抗力來測量眼壓，臨床上可作為是否有青光眼的重要參考。視力、色盲。兩耳聽力損失程度測定。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">糞便檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢測出隱藏在大便中血液的檢驗，確認有無腸胃道出血。此方法的敏感性非常高，能精確的檢測到糞便中20ng/ml血紅的含量。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">尿液常規檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">尿路感染或發炎、急慢性腎炎、腎功能不良、糖尿病、泌尿道結石、腎病變症候群等之篩檢、泌尿道疾病檢查。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">血液常規檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">貧血分類(如缺鐵性、海洋性貧血)、血液凝固功能、白血病(血癌)、血小板缺少紫斑病、細菌性感染、免疫性疾病。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">肝功能檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢查是否有急慢性肝炎、肝硬化、肝膽功能異常、肝腫瘤及膽道阻塞、營養狀態等症狀。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">膽囊功能檢查	</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">膽道阻塞、膽結石、膽管炎、黃疸症、肝病變、肝炎。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">腎功能檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">急慢性腎炎、腎衰竭、尿毒症、腎臟機能障礙。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">甲狀腺功能檢查	</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">	檢測甲狀腺機能亢進或低下症。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">癌症標記篩檢</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">肝硬化、肝癌等初步參考指標。腸、胃、肺、胰等腫瘤初步參考指標。卵巢癌、子宮內膜癌或發炎、良性瘤。攝護腺癌或攝護腺發炎的初步參考指標。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">胃幽門桿菌檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">可瞭解胃內是否有幽門桿菌感染。此菌易造成胃潰瘍、胃炎、胃癌、12指腸潰瘍。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">動脈硬化檢測</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">動脈硬化程度、阻塞性動脈硬症、腦中風。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">有感內視鏡檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">胃炎、胃潰瘍、胃癌、12指腸潰瘍、幽門螺旋桿菌檢查。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">婦科會診(女性)</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">初步子宮頸癌篩檢。是否有子宮肌瘤、卵巢瘤或其他異常病變等。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">組織發炎檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">急慢性發炎、組織受損、心肌梗塞、惡性腫瘤。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">類風濕因子檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">類風濕性關節炎初步參考指標。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">無痛型內視鏡 (麻醉) 當日需由成人陪同返家</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">胃炎、胃潰瘍、胃癌、12指腸潰瘍、幽門螺旋桿菌檢查。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">乳房超音波(女性)</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">是否有纖維囊腫、腫瘤或其他異常病變等。	</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">攝護腺超音波    (男性)</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢測攝護腺是否有腫大或癌症等病變。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCCCFF">
                    <asp:TableCell runat="server" Font-Bold="True" Font-Size="10pt">價格</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True" Font-Italic="True" Font-Size="10pt" ForeColor="#FF3300">15000</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           
            <asp:Table ID="Table4" runat="server" Height="150px" style="margin-right: 0px" Visible="False" Width="752px" BorderColor="Black" BorderWidth="1px">
                <asp:TableRow runat="server" BackColor="#3399FF" BorderWidth="1px" Font-Bold="True" ForeColor="White">
                    <asp:TableCell runat="server">檢查項目	</asp:TableCell>
                    <asp:TableCell runat="server">臨床參考之意義</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF" BorderWidth="1px" Font-Size="10pt">
                    <asp:TableCell runat="server">一般檢查</asp:TableCell>
                    <asp:TableCell runat="server">身體的初步評估，以了解基本功能狀況。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF" BorderWidth="1px">
                    <asp:TableCell runat="server" Font-Size="10pt">醫師理學檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">甲狀腺、淋巴腺、心雜音、皮膚、靜脈曲張、氣喘、腹部、肺部、下肢水腫疾病等。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">眼科 視力 聽力檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">利用氣體吹到角膜、視其對角膜之抗力來測量眼壓，臨床上可作為是否有青光眼的重要參考。視力、色盲。兩耳聽力損失程度測定。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">糞便檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢測出隱藏在大便中血液的檢驗，確認有無腸胃道出血。此方法的敏感性非常高，能精確的檢測到糞便中20ng/ml血紅的含量。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">尿液常規檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">尿路感染或發炎、急慢性腎炎、腎功能不良、糖尿病、泌尿道結石、腎病變症候群等之篩檢、泌尿道疾病檢查。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">血液常規檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">貧血分類(如缺鐵性、海洋性貧血)、血液凝固功能、白血病(血癌)、血小板缺少紫斑病、細菌性感染、免疫性疾病。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">肝功能檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢查是否有急慢性肝炎、肝硬化、肝膽功能異常、肝腫瘤及膽道阻塞、營養狀態等症狀。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">膽囊功能檢查	</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">膽道阻塞、膽結石、膽管炎、黃疸症、肝病變、肝炎。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">腎功能檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">急慢性腎炎、腎衰竭、尿毒症、腎臟機能障礙。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">甲狀腺功能檢查	</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">	檢測甲狀腺機能亢進或低下症。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">癌症標記篩檢</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">肝硬化、肝癌等初步參考指標。腸、胃、肺、胰等腫瘤初步參考指標。卵巢癌、子宮內膜癌或發炎、良性瘤。攝護腺癌或攝護腺發炎的初步參考指標。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">胃幽門桿菌檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">可瞭解胃內是否有幽門桿菌感染。此菌易造成胃潰瘍、胃炎、胃癌、12指腸潰瘍。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">動脈硬化檢測</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">動脈硬化程度、阻塞性動脈硬症、腦中風。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">有感內視鏡檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">胃炎、胃潰瘍、胃癌、12指腸潰瘍、幽門螺旋桿菌檢查。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">婦科會診(女性)</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">初步子宮頸癌篩檢。是否有子宮肌瘤、卵巢瘤或其他異常病變等。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">組織發炎檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">急慢性發炎、組織受損、心肌梗塞、惡性腫瘤。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">類風濕因子檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">類風濕性關節炎初步參考指標。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">無痛型內視鏡 (麻醉) 當日需由成人陪同返家</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">胃炎、胃潰瘍、胃癌、12指腸潰瘍、幽門螺旋桿菌檢查。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">乳房超音波(女性)</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">是否有纖維囊腫、腫瘤或其他異常病變等。	</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">攝護腺超音波    (男性)</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">檢測攝護腺是否有腫大或癌症等病變。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">腦部磁振造影(MRI)檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">利用高科技核磁造影檢測是否有腦部組織異常、退化、梗塞、血管阻塞、不明原因頭痛、暈眩、耳鳴等病變，並可評估頭部鄰近器官如鼻竇等構造。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCFFFF">
                    <asp:TableCell runat="server" Font-Size="10pt">全景寶石電腦斷層掃描檢查</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">低輻射劑量肺部電腦斷層檢查，完全無侵襲性，可偵測出微小病灶，亦能完整評估縱膈腔、心臟周邊、脊椎附近等一般X光難以診斷的區域。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#99CCFF">
                    <asp:TableCell runat="server" Font-Size="10pt">彩色心臟超音波</asp:TableCell>
                    <asp:TableCell runat="server" Font-Size="8pt">可了解心臟是否擴大、瓣膜問題、先天性心臟病、心肌梗塞或缺氧、心臟腫瘤等。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCCCFF">
                    <asp:TableCell runat="server" Font-Bold="True" Font-Size="10pt">價格</asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True" Font-Italic="True" Font-Size="10pt" ForeColor="#FF3300">28000</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            預約檢查日期:<asp:Calendar ID="Calendar1" runat="server" BackColor="#CC99FF" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnDayRender="Calendar1_DayRender" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <br />
            預約檢查時段:<asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Visible="False">
            </asp:RadioButtonList>
            <br />
            是否需要停車場消磁:<asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="1">需要</asp:ListItem>
                <asp:ListItem Value="2">不需要</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="上一步" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="確定" OnClick="Button2_Click" />
            <br />
        </div>
    </form>
</body>
</html>
