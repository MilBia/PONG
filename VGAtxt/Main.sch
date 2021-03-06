<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_3" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_16" />
        <signal name="btn_west" />
        <signal name="XLXN_21" />
        <signal name="XLXN_38" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_98(7:0)" />
        <signal name="XLXN_99(2:0)" />
        <signal name="XLXN_120" />
        <signal name="XLXN_122" />
        <signal name="XLXN_7" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="btn_west" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T8:59:2</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="MENU">
            <timestamp>2017-4-4T9:18:27</timestamp>
            <line x2="384" y1="352" y2="352" x1="320" />
            <line x2="384" y1="416" y2="416" x1="320" />
            <rect width="64" x="320" y="468" height="24" />
            <line x2="384" y1="480" y2="480" x1="320" />
            <rect width="64" x="320" y="532" height="24" />
            <line x2="384" y1="544" y2="544" x1="320" />
            <rect width="64" x="0" y="276" height="24" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-192" height="768" />
        </blockdef>
        <blockdef name="PS2_to_STER">
            <timestamp>2017-3-31T10:44:39</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-76" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="VGAtxt48x20" name="XLXI_1">
            <blockpin signalname="XLXN_10(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_7" name="Home" />
            <blockpin signalname="XLXN_12" name="NewLine" />
            <blockpin signalname="XLXN_21" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_7" name="CursorOn" />
            <blockpin signalname="XLXN_7" name="ScrollEn" />
            <blockpin signalname="XLXN_7" name="ScrollClear" />
            <blockpin signalname="XLXN_122" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_3" name="VGA_RGB" />
            <blockpin signalname="XLXN_11" name="Char_WE" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_7" name="G" />
        </block>
        <block symbolname="MENU" name="XLXI_7">
            <blockpin signalname="XLXN_120" name="ENTER" />
            <blockpin signalname="XLXN_38" name="ESC" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="btn_west" name="Reset" />
            <blockpin signalname="XLXN_16" name="Busy" />
            <blockpin signalname="XLXN_99(2:0)" name="STER1(2:0)" />
            <blockpin signalname="XLXN_11" name="Char_WE" />
            <blockpin signalname="XLXN_12" name="NewLine" />
            <blockpin signalname="XLXN_21" name="Goto00" />
            <blockpin signalname="XLXN_10(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Play" />
            <blockpin name="Pouse" />
            <blockpin name="P1_RGB(2:0)" />
            <blockpin name="P2_RGB(2:0)" />
        </block>
        <block symbolname="PS2_to_STER" name="XLXI_9">
            <blockpin signalname="XLXN_81" name="E0" />
            <blockpin signalname="XLXN_82" name="F0" />
            <blockpin signalname="XLXN_83" name="RS2_Rdy" />
            <blockpin signalname="btn_west" name="Clr" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_98(7:0)" name="D_in(7:0)" />
            <blockpin signalname="XLXN_120" name="ENTER" />
            <blockpin signalname="XLXN_38" name="ESC" />
            <blockpin signalname="XLXN_99(2:0)" name="P1(2:0)" />
            <blockpin name="P2(2:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_10">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_81" name="E0" />
            <blockpin signalname="XLXN_82" name="F0" />
            <blockpin signalname="XLXN_83" name="DO_Rdy" />
            <blockpin signalname="XLXN_98(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_122" name="I0" />
            <blockpin signalname="btn_west" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="VGA_HS">
            <wire x2="2672" y1="800" y2="800" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2672" y="800" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="2672" y1="864" y2="864" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2672" y="864" name="VGA_VS" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="2880" y1="928" y2="928" x1="2640" />
            <wire x2="2944" y1="928" y2="928" x1="2880" />
            <wire x2="2880" y1="928" y2="992" x1="2880" />
            <wire x2="2944" y1="992" y2="992" x1="2880" />
            <wire x2="2880" y1="992" y2="1056" x1="2880" />
            <wire x2="2944" y1="1056" y2="1056" x1="2880" />
        </branch>
        <instance x="2944" y="960" name="XLXI_3" orien="R0" />
        <instance x="2944" y="1024" name="XLXI_4" orien="R0" />
        <instance x="2944" y="1088" name="XLXI_5" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3200" y1="928" y2="928" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3200" y="928" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3200" y1="992" y2="992" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3200" y="992" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3200" y1="1056" y2="1056" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1056" name="VGA_B" orien="R0" />
        <instance x="1936" y="1328" name="XLXI_6" orien="R0" />
        <instance x="1568" y="864" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_11">
            <wire x2="2064" y1="704" y2="704" x1="1952" />
            <wire x2="2064" y1="704" y2="864" x1="2064" />
            <wire x2="2208" y1="864" y2="864" x1="2064" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2048" y1="768" y2="768" x1="1952" />
            <wire x2="2048" y1="768" y2="1024" x1="2048" />
            <wire x2="2208" y1="1024" y2="1024" x1="2048" />
        </branch>
        <instance x="800" y="1024" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_38">
            <wire x2="1296" y1="768" y2="768" x1="1184" />
            <wire x2="1296" y1="768" y2="1024" x1="1296" />
            <wire x2="1568" y1="1024" y2="1024" x1="1296" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="720" y1="880" y2="880" x1="624" />
            <wire x2="800" y1="800" y2="800" x1="720" />
            <wire x2="720" y1="800" y2="880" x1="720" />
        </branch>
        <iomarker fontsize="28" x="176" y="1200" name="btn_west" orien="R180" />
        <branch name="PS2_Clk">
            <wire x2="240" y1="688" y2="688" x1="176" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="240" y1="752" y2="752" x1="192" />
        </branch>
        <iomarker fontsize="28" x="176" y="688" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="192" y="752" name="PS2_Data" orien="R180" />
        <instance x="240" y="912" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_81">
            <wire x2="656" y1="752" y2="752" x1="624" />
            <wire x2="656" y1="672" y2="752" x1="656" />
            <wire x2="800" y1="672" y2="672" x1="656" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="688" y1="816" y2="816" x1="624" />
            <wire x2="688" y1="736" y2="816" x1="688" />
            <wire x2="800" y1="736" y2="736" x1="688" />
        </branch>
        <branch name="XLXN_98(7:0)">
            <wire x2="640" y1="688" y2="688" x1="624" />
            <wire x2="640" y1="688" y2="992" x1="640" />
            <wire x2="800" y1="992" y2="992" x1="640" />
        </branch>
        <branch name="XLXN_99(2:0)">
            <wire x2="1248" y1="864" y2="864" x1="1184" />
            <wire x2="1248" y1="864" y2="1152" x1="1248" />
            <wire x2="1568" y1="1152" y2="1152" x1="1248" />
        </branch>
        <branch name="XLXN_10(7:0)">
            <wire x2="2032" y1="896" y2="896" x1="1952" />
            <wire x2="2032" y1="800" y2="896" x1="2032" />
            <wire x2="2208" y1="800" y2="800" x1="2032" />
        </branch>
        <instance x="2208" y="1408" name="XLXI_1" orien="R0">
        </instance>
        <branch name="btn_west">
            <wire x2="752" y1="1200" y2="1200" x1="176" />
            <wire x2="1200" y1="1200" y2="1200" x1="752" />
            <wire x2="1376" y1="1200" y2="1200" x1="1200" />
            <wire x2="1200" y1="1200" y2="1856" x1="1200" />
            <wire x2="1408" y1="1856" y2="1856" x1="1200" />
            <wire x2="800" y1="864" y2="864" x1="752" />
            <wire x2="752" y1="864" y2="1200" x1="752" />
            <wire x2="1568" y1="768" y2="768" x1="1376" />
            <wire x2="1376" y1="768" y2="1200" x1="1376" />
            <wire x2="1408" y1="1776" y2="1856" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="192" y="1472" name="Clk_50MHz" orien="R180" />
        <branch name="XLXN_120">
            <wire x2="1360" y1="672" y2="672" x1="1184" />
            <wire x2="1360" y1="672" y2="960" x1="1360" />
            <wire x2="1568" y1="960" y2="960" x1="1360" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2112" y1="1088" y2="1088" x1="2000" />
            <wire x2="2112" y1="1088" y2="1184" x1="2112" />
            <wire x2="2112" y1="1184" y2="1248" x1="2112" />
            <wire x2="2112" y1="1248" y2="1312" x1="2112" />
            <wire x2="2208" y1="1312" y2="1312" x1="2112" />
            <wire x2="2208" y1="1248" y2="1248" x1="2112" />
            <wire x2="2208" y1="1184" y2="1184" x1="2112" />
            <wire x2="2000" y1="1088" y2="1200" x1="2000" />
            <wire x2="2208" y1="960" y2="960" x1="2112" />
            <wire x2="2112" y1="960" y2="1088" x1="2112" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1440" y1="832" y2="1520" x1="1440" />
            <wire x2="1568" y1="832" y2="832" x1="1440" />
        </branch>
        <branch name="XLXN_122">
            <wire x2="1472" y1="1776" y2="1856" x1="1472" />
            <wire x2="2656" y1="1856" y2="1856" x1="1472" />
            <wire x2="2656" y1="1056" y2="1056" x1="2640" />
            <wire x2="2656" y1="1056" y2="1856" x1="2656" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="224" y1="1472" y2="1472" x1="192" />
            <wire x2="784" y1="1472" y2="1472" x1="224" />
            <wire x2="1504" y1="1472" y2="1472" x1="784" />
            <wire x2="2192" y1="1472" y2="1472" x1="1504" />
            <wire x2="2208" y1="1472" y2="1472" x1="2192" />
            <wire x2="240" y1="816" y2="816" x1="224" />
            <wire x2="224" y1="816" y2="880" x1="224" />
            <wire x2="240" y1="880" y2="880" x1="224" />
            <wire x2="224" y1="880" y2="1472" x1="224" />
            <wire x2="800" y1="928" y2="928" x1="784" />
            <wire x2="784" y1="928" y2="1472" x1="784" />
            <wire x2="1568" y1="704" y2="704" x1="1504" />
            <wire x2="1504" y1="704" y2="1472" x1="1504" />
            <wire x2="2208" y1="1408" y2="1408" x1="2192" />
            <wire x2="2192" y1="1408" y2="1472" x1="2192" />
        </branch>
        <instance x="1536" y="1776" name="XLXI_12" orien="R270" />
        <branch name="XLXN_21">
            <wire x2="2016" y1="960" y2="960" x1="1952" />
            <wire x2="2016" y1="960" y2="1104" x1="2016" />
            <wire x2="2192" y1="1104" y2="1104" x1="2016" />
            <wire x2="2208" y1="1088" y2="1088" x1="2192" />
            <wire x2="2192" y1="1088" y2="1104" x1="2192" />
        </branch>
    </sheet>
</drawing>