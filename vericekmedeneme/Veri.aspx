<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veri.aspx.cs" Inherits="vericekmedeneme.Veri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Döviz,Dolar,Altın,Euro,Ekonomi,haberler,KaçLira,Amerika,Trump,Almanya,Erdoğan,Türkiye,Bitcoin,Borsa,sterlin,ceyrek,fiyat,tamaltın,sondurum,dovizsondurum">
    <meta name="author" content="">
    <title>Dövi Son Durum</title>

    <!-- Bootstrap CSS -->
    <link href="AppLayers/css/bootstrap.min.css" rel="stylesheet">
    <!-- CSS Custom -->
    <link rel="stylesheet" type="text/css" href="AppLayers/css/style.css">

    <!-- favicon Icon -->
    <!--<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">-->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%--<link rel="stylesheet" href="haber temp/assets/css/main.css" />--%>
    <%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">--%>
    <!-- CSS Plugins -->
    <link href="AppLayers/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="AppLayers/css/animate.min.css">
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Tablo/css/util.css">
    <link rel="stylesheet" type="text/css" href="Tablo/css/main.css">
    <!--===============================================================================================-->



    <style>
        .column1 {
            width: 100px;
            text-align: center;
            font-weight: 1000;
            font-size: 20px;
        }

        .column2 {
            width: 50px;
            text-align: center;
        }

        .column3 {
            width: 100px;
            text-align: center;
        }

        .column4 {
            width: 100px;
            text-align: center;
        }

        .green {
            background-color: green;
            color: green;
        }

        .red {
            background-color: red;
            color: red;
        }

        .blue {
            background-color: blue;
            color: blue;
        }

        .greenicon {
            color: green;
        }

        .redicon {
            color: red;
        }

        .blueicon {
            color: blue;
        }
    </style>

    <script runat="server" type="text/c#">
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = Label1.Text;
        }
        protected void Timer2_Tick(object sender, EventArgs e)
        {
            Label2.Text = Label2.Text;
        }
        protected void Timer3_Tick(object sender, EventArgs e)
        {
            Label3.Text = Label3.Text;
        }
        protected void Timer4_Tick(object sender, EventArgs e)
        {
            Label4.Text = Label4.Text;
        }
        protected void Timer5_Tick(object sender, EventArgs e)
        {
            Label5.Text = Label5.Text;
        }
        protected void Timer6_Tick(object sender, EventArgs e)
        {
            Label6.Text = Label6.Text;
        }
        /*timers*/
        protected void Timer10_Tick(object sender, EventArgs e)
        {
            dolaralis.Text = dolaralis.Text;
            dolarsatis.Text = dolarsatis.Text;
            euroalis.Text = euroalis.Text;
            eurosatis.Text = eurosatis.Text;
            sterlinalis.Text = sterlinalis.Text;
            sterlinsatis.Text = sterlinsatis.Text;
            kanadaalis.Text = kanadaalis.Text;
            kanadasatis.Text = kanadasatis.Text;
            danimarkaalis.Text = danimarkaalis.Text;
            danimarkasatis.Text = danimarkasatis.Text;
            onsalis.Text = onssatis.Text;
            onssatis.Text = onssatis.Text;
            gramalis.Text = gramalis.Text;
            gramsatis.Text = gramsatis.Text;
            ceyrekalis.Text = ceyrekalis.Text;
            ceyreksatis.Text = ceyreksatis.Text;
            cumhuralis.Text = cumhuralis.Text;
            cumhursatis.Text = cumhursatis.Text;
        }



    </script>


    <%--Reklam Alanı--%>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
        (adsbygoogle = window.adsbygoogle || []).push({
            google_ad_client: "ca-pub-4140709128679444",
            enable_page_level_ads: true
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">


        <section id="pricing" class="price_table_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="table-1">

                                <h3 style="margin: -15px -15px;">Dolar </h3>

                                <div runat="server" id="dolaryuzde" class="price_month">

                                    <div id="deger">
                                        <span class="round">

                                            <asp:ScriptManager runat="server" ID="ScriptManager1">
                                            </asp:ScriptManager>

                                            <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                                                <ContentTemplate>
                                                    <asp:Timer runat="server" ID="Timer1" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>
                                                    <h3>
                                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                    </h3>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                            <span>
                                                <p>/TL </p>
                                            </span>
                                        </span>
                                    </div>

                                </div>



                                <div class="section_sub_btn">

                                    <asp:UpdatePanel runat="server" ID="UpdatePanel4">
                                        <ContentTemplate>
                                            <asp:Timer runat="server" ID="Timer4" Interval="10000" OnTick="Timer4_Tick"></asp:Timer>
                                            <h3>
                                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                            </h3>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>


                                    <%--<button class="btn btn-default" type="submit">Geçmiş istatistikler</button>--%>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-4">
                            <div class="table-1">


                                <h3 style="margin: -15px -15px;">Euro </h3>

                                <div runat="server" id="euroyuzde" class="price_month">
                                    <span class="round">


                                        <asp:UpdatePanel runat="server" ID="UpdatePanel2">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer2" Interval="10000" OnTick="Timer2_Tick"></asp:Timer>
                                                <h3>
                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                </h3>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <span>
                                            <p>/TL </p>
                                        </span>
                                    </span>

                                </div>



                                <div class="section_sub_btn">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel5">
                                        <ContentTemplate>
                                            <asp:Timer runat="server" ID="Timer5" Interval="10000" OnTick="Timer5_Tick"></asp:Timer>
                                            <h3>
                                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                            </h3>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <%--<button class="btn btn-default" type="submit">Geçmiş istatistikler</button>--%>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-4">
                            <div class="table-1">


                                <h3 style="margin: -15px -15px;">Gram Altın </h3>

                                <div runat="server" id="altinyuzde" class="price_month">
                                    <span class="round">


                                        <asp:UpdatePanel runat="server" ID="UpdatePanel3">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer3" Interval="10000" OnTick="Timer3_Tick"></asp:Timer>
                                                <h3>
                                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                                </h3>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <span>
                                            <p>/TL </p>
                                        </span>
                                    </span>

                                </div>



                                <div class="section_sub_btn">



                                    <asp:UpdatePanel runat="server" ID="UpdatePanel6">
                                        <ContentTemplate>
                                            <asp:Timer runat="server" ID="Timer6" Interval="10000" OnTick="Timer6_Tick"></asp:Timer>
                                            <h3>
                                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                            </h3>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>


                                    <%-- <button class="btn btn-default" type="submit">Geçmiş istatistikler</button>--%>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </section>

         <!--Hesaplama-->

        <section class="primary-bg Hesaplama">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section_heading">
                            <h2>Döviz Hesapla </h2>

                            
                        </div>


                        <div class="col-md-6">
                            <p style="text-align: center; margin-bottom:5px;">
                                
                                Bu değeri
                                
                                
                            </p>
                            <p style="text-align: center;">
                                
                                <asp:DropDownList ID="DropDownList1" CssClass="drop" runat="server">
                                    
                                </asp:DropDownList>
                                
                                
                            </p>
                            
                        </div>
                        <div class="col-md-6">
                            <p style="text-align: center; margin-bottom:5px;">
                                Bu değere çevir
                                
                                
                            </p>
                            <p style="text-align: center;">
                               
                                <asp:DropDownList ID="DropDownList2" CssClass="drop" runat="server">
                                   
                                </asp:DropDownList>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        
                        
                             <p class="text-center" style="text-align:center"><asp:TextBox ID="TextBox1" CssClass="textbox" runat="server" ToolTip="Değer Giriniz"></asp:TextBox></p>
                            
                        
                    </div>
                    <div class="col-md-12">
                        <p style="text-align:center;">
                        <asp:Label ID="Label27" runat="server" Text="" ></asp:Label>
                            <i runat="server" id="tur"></i>
                            </p>
                    </div>
                    
                    <div class="col-md-12" style="text-align:center; margin:0 auto;">
                        <br />
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <p style="text-align:center">
                                <asp:Button ID="Button1" runat="server" Text="Hesapla" OnClick="Button1_Click1" EnableViewState="true" />


                            </p>
                            </div>
                        <div class="col-md-4"></div>
                       
                    </div>
                </div>
            </div>
        </section>

        <div class="limiter">
            
            <div class="container-table100">
                
                <div class="wrap-table100">
                    <h3 style="color: #0A101E; text-align:center; margin:0 auto; padding-bottom: 10px;">Döviz Kurları</h3>
                    <div class="table100">
                        <table>
                            <thead>
                                <tr class="table100-head">
                                    <th class="column1">Döviz</th>
                                    <th class="column2">Durum</th>
                                    <th class="column3">Alış</th>
                                    <th class="column4">Satış</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr runat="server" id="dolartr">
                                    <td class="column1">Dolar</td>
                                    <td class="column2"><i runat="server" id="dolar"></i></td>
                                    <td class="column3">
                                        <asp:UpdatePanel runat="server" ID="UpdatePanel7">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer7" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="dolaralis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="column4">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel8">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer8" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="dolarsatis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr runat="server" id="eurotr">
                                    <td class="column1">Euro</td>
                                    <td class="column2"><i runat="server" id="euro"></i></td>
                                    <td class="column3">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel9">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer9" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="euroalis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="column4">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel10">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer10" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="eurosatis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>

                                <tr runat="server" id="sterlintr">
                                    <td class="column1">İngiliz Sterlini</td>
                                    <td class="column2"><i runat="server" id="sterlin"></i></td>
                                    <td class="column3">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel11">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer11" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="sterlinalis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="column4">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel12">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer12" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="sterlinsatis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>

                                <tr runat="server" id="kanadatr">
                                    <td class="column1">Kanada Doları</td>
                                    <td class="column2"><i runat="server" id="kanada"></i></td>
                                    <td class="column3">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel13">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer13" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="kanadaalis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="column4">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel14">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer14" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="kanadasatis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>

                                <tr runat="server" id="danimarkatr">
                                    <td class="column1">Danimarka Kronu</td>
                                    <td class="column2"><i runat="server" id="danimarka"></i></td>
                                    <td class="column3">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel16">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer16" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="danimarkaalis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="column4">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel15">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer15" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="danimarkasatis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>

                                <tr runat="server" id="onstr">
                                    <td class="column1">ONS</td>
                                    <td class="column2"><i runat="server" id="ons"></i></td>
                                    <td class="column3">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel18">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer18" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="onsalis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="column4">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel17">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer17" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="onssatis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>

                                <tr runat="server" id="gramtr">
                                    <td class="column1">Gram Altın</td>
                                    <td class="column2"><i runat="server" id="gram"></i></td>
                                    <td class="column3">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel20">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer20" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="gramalis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="column4">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel19">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer19" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="gramsatis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>

                                <tr runat="server" id="ceyrektr">
                                    <td class="column1">Çeyrek Altın</td>
                                    <td class="column2"><i runat="server" id="ceyrek"></i></td>
                                    <td class="column3">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel22">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer22" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="ceyrekalis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="column4">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel21">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer21" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="ceyreksatis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>

                                <tr runat="server" id="cumhurtr">
                                    <td class="column1">Cumhuriyet Altını</td>
                                    <td class="column2"><i runat="server" id="cumhur"></i></td>
                                    <td class="column3">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel23">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer23" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="cumhuralis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="column4">

                                        <asp:UpdatePanel runat="server" ID="UpdatePanel24">
                                            <ContentTemplate>
                                                <asp:Timer runat="server" ID="Timer24" Interval="10000" OnTick="Timer10_Tick"></asp:Timer>
                                                <asp:Label ID="cumhursatis" runat="server" Text="Label"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

       

        <!--Makale-->
        <section class="primary-bg makale">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <div class="section_heading">
                            <h2>Piyasa Yazıları</h2>


                        </div>

                        <div class="text-left">



                            <div class="card-body">
                                <h5 style="font-size: 25px;">Sert Piyasa Dalgasına Hazır Olun!</h5>
                                <p class="card-text">Aydın Eroğlu'nun 15.08.2018 Yazısı</p>
                                <hr />
                                <p class="card-text">Bir süredir öne atılan rahip Brunson gerekçesi öncülüğünde ABD ile çok sert gerginlikler yaşıyoruz. Aslında ABD ile tek sorunumuzun rahip Brunson olmadığını 06/08 tarihli Tek Sorun Rahip Brunson Değil! başlıklı yazımda yazmıştım. Ama şu an sanki tek sorun Brunson konusu imiş gibi oraya odaklanmış durumdayız.</p>
                                <br />
                                <h5 style="font-size: 20px;">Pozitif Dalga Mı Geliyor!</h5>
                                <p class="card-text">Dün mahkeme tutuklu bulunan Yunan askerlerini serbest bıraktı. Yunan başbakanı Çipras, bu kararın dostluğu pekiştirecek bir adım olduğunu söyledi. Benzer bir mahkeme kararı da rahip Brunson için çıkar mı göreceğiz. Eğer kısa süre içinde Brunson için de serbest bırakıldığı yönünde bir karar çıkacak olursa, buna piyasaların pozitif ve sert bir tepki vermesini bekliyorum.</p>
                                <br />
                                <p class="card-text">Teknik grafiklere bakınca, Gr. altında 241,00 seviyesinin altında destek-direnç tablomuzda kademelerini paylaştığım çok sert düşüş yaşanabilir. Aynı şekilde BİST için de çok sert bir pozitif ayrışma yaşanabilir. Ki, teknik kademelerini Destek-Direnç Tablomuzda bulabilirsiniz. Aynı şekilde Dolar da, pozitif bir rahip kararı sonrasında 6.29 altına sarktığı anda çok sert bir geri çekilme ile 5.53 ve altındaki seviyelere inebilir. Bu durum aynı yükseliş hızındaki gibi hızlı olur. Kurlar için de olası alt kademe desteklerini Destek-Direnç tablomuzda görebilirsiniz.</p>
                                <br />
                                <h5 style="font-size: 20px;">Negatif Dalga Gelirse!</h5>
                                <p class="card-text">Kurların grafiklerinde sanki negatif dalga hazırlığı varmış gibi görüyorum. Ama rahip Brunson sertbest kalmaz ve mahkeme Brunson’un avukatının bu yöndeki talebine yine olumsuz cevap verirse, bu takdirde piyasanın yukarıdaki beklentilerimin tam tersi sert bir negatif dalga içine girmesini bekliyorum. Böyle bir kararın hemen akabinde ABD tarafından daha da sert yeni yaptırım kararları da duyacağımızı düşünüyorum.</p>
                                <hr />
                                <p class="card-text">Maalesef böyle bir ortamda BİST negatif ayrışma yaşarken, kurlar ve gr.altında yeni ve oldukça yüksek zirveler görebiliriz. Bu yönde bir tablonun kurlar ve dolayısı ile faizler açısından ekonomimiz üzerinde çok kötü etkisi olur. Olası kötü senaryo halindeki kur, gr altın ve BİST teknikleri içinde paylaşımlarımı Destek-Direnç tablomuzda göreceksiniz.</p>
                                <br />
                                <h5 style="font-size: 20px;">ONS Altın Destek Kırdı!</h5>
                                <p class="card-text">03/08 tarihli Gündemi Bol Bir Gün! başlıklı yazımda ons için uyarı yapmıştım. 1.204$ desteğinden tepki gelebileceğini ama tepkinin sınırlı kalacağını yazmıştım. Eğer desteğini kırarsa ki, sonrası için görüşüm bu yönde idi, ons’da alt desteklere doğru hızlı bir değer kaybı yaşanabileceği uyarımı yapmıştım. Ons bu uyarımdaki gibi desteğini kırdı ve düşüşe başlamış durumda. Muhtemelen Destek-Direnç  tablomuzda paylaştığım alt destek kademelerine doğru indiğini görebiliriz.</p>
                                <h5><a href="#">Daha fazla Makale İçin</a></h5>

                            </div>

                        </div>


                    </div>
                </div>
            </div>
        </section>








        <section class="primary-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <div class="section_heading">
                            <h2>Önemli Gelişmeleri Buradan takip Edebilirsiniz </h2>

                            <h4>Doviz Kurları, piyasalar, borsa, ekonomi haberleri ve daha fazla haber için bizi takip edin</h4>
                        </div>


                        <div role="tablist" id="accordion1" class="panel-group ">
                            <!-- Accordion 1 -->




                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse1" data-parent="#accordion1" data-toggle="collapse" role="button" aria-expanded="true" class="">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse in" id="collapse1" aria-expanded="true" style="">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>





                            <!-- Accordion 2 -->

                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse2" data-parent="#accordion1" data-toggle="collapse" role="button" class="collapsed" aria-expanded="false">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse" id="collapse2" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <!-- Accordion 3 -->
                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse3" data-parent="#accordion1" data-toggle="collapse" role="button" class="collapsed" aria-expanded="false">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse" id="collapse3" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>

                            <!-- Accordion 4 -->
                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse4" data-parent="#accordion1" data-toggle="collapse" role="button" class="collapsed" aria-expanded="false">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse" id="collapse4" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>

                            <!-- Accordion 5 -->
                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse5" data-parent="#accordion1" data-toggle="collapse" role="button" class="collapsed" aria-expanded="false">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse" id="collapse5" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>
                            <!-- Accordion 6 -->
                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse6" data-parent="#accordion1" data-toggle="collapse" role="button" class="collapsed" aria-expanded="false">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse" id="collapse6" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>
                            <!-- Accordion 7 -->
                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse7" data-parent="#accordion1" data-toggle="collapse" role="button" class="collapsed" aria-expanded="false">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse" id="collapse7" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>
                            <!-- Accordion 8 -->
                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse8" data-parent="#accordion1" data-toggle="collapse" role="button" class="collapsed" aria-expanded="false">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse" id="collapse8" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>
                            <!-- Accordion 9 -->
                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse9" data-parent="#accordion1" data-toggle="collapse" role="button" class="collapsed" aria-expanded="false">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse" id="collapse9" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>
                            <!-- Accordion 10-->
                            <div class="panel panel-default">
                                <div role="tab" class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#collapse10" data-parent="#accordion1" data-toggle="collapse" role="button" class="collapsed" aria-expanded="false">
                                            <div class="font-icon-m">
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                            </div>
                                            <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                                        </a>
                                    </h4>
                                </div>
                                <div role="tabpanel" class="panel-collapse collapse" id="collapse10" aria-expanded="false" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                            <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </section>



        <footer class="third-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <div class="footer_top">
                            <h4>Yakın Zamanda Bizi Diğer Uygulamalardan da Takip Edebilirsiniz  </h4>

                            <ul>
                                <li><a href="http://facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="http://twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="http://linkedin.com/"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="http://google.com/"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="http://youtu.be/"><i class="fa fa-youtube-square" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.instagram.com"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>




                    </div>
                </div>
            </div>

            <div class="footer_bottom fourth-bg">
                <!-- Keep Footer Credit Links Intact -->
                <p>2018 &copy; Copyright Dovizsondurum.com. Her hakkı Saklıdır. Prepared By GorusVeris Group</p>
                <a href="#" class="backtop">^ </a>
            </div>

        </footer>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="AppLayers/js/bootstrap.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="AppLayers/js/agency.js"></script>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/jquery.poptrox.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/interface.js"></script>
        <script type="text/javascript"> 
            $(document).ready(function () {
                $("#menu_slide").click(function () {
                    $("#navbar").slideToggle('normal');
                });
            });
        </script>
        <!--Menu Js Right Menu-->
        <script type="text/javascript">
            $(document).ready(function () {
                $('#navbar > ul > li:has(ul)').addClass("has-sub");
                $('#navbar > ul > li > a').click(function () {
                    var checkElement = $(this).next();
                    $('#navbar li').removeClass('dropdown');
                    $(this).closest('li').addClass('dropdown');
                    if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
                        $(this).closest('li').removeClass('dropdown');
                        checkElement.slideUp('normal');
                    }
                    if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
                        $('#navbar ul ul:visible').slideUp('normal');
                        checkElement.slideDown('normal');
                    }
                    if (checkElement.is('ul')) {
                        return false;
                    } else {
                        return true;
                    }
                });
            });
< !--end-->
        </script>
        <script type="text/javascript">	
                $("#navbar").on("click", function (event) {
                    event.stopPropagation();
                });
            $(".dropdown-menu").on("click", function (event) {
                event.stopPropagation();
            });
            $(document).on("click", function (event) {
                $(".dropdown-menu").slideUp('normal');
            });

            $(".navbar-header").on("click", function (event) {
                event.stopPropagation();
            });
            $(document).on("click", function (event) {
                $("#navbar").slideUp('normal');
            });
        </script>


    </form>
</body>
</html>

