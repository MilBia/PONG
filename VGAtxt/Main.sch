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
        <signal name="XLXN_7" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_16" />
        <signal name="btn_west" />
        <signal name="XLXN_20" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="btn_west" />
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
            <timestamp>2017-3-24T12:36:41</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
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
            <blockpin signalname="XLXN_7" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_7" name="CursorOn" />
            <blockpin signalname="XLXN_7" name="ScrollEn" />
            <blockpin signalname="XLXN_7" name="ScrollClear" />
            <blockpin signalname="XLXN_16" name="Busy" />
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
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="btn_west" name="Reset" />
            <blockpin signalname="XLXN_20" name="Busy" />
            <blockpin signalname="XLXN_11" name="Char_WE" />
            <blockpin signalname="XLXN_12" name="NewLine" />
            <blockpin signalname="XLXN_10(7:0)" name="Char_DI(7:0)" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="btn_west" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2208" y="1408" name="XLXI_1" orien="R0">
        </instance>
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
        <branch name="XLXN_7">
            <wire x2="2112" y1="1088" y2="1088" x1="2000" />
            <wire x2="2208" y1="1088" y2="1088" x1="2112" />
            <wire x2="2112" y1="1088" y2="1184" x1="2112" />
            <wire x2="2112" y1="1184" y2="1248" x1="2112" />
            <wire x2="2208" y1="1248" y2="1248" x1="2112" />
            <wire x2="2112" y1="1248" y2="1312" x1="2112" />
            <wire x2="2208" y1="1312" y2="1312" x1="2112" />
            <wire x2="2208" y1="1184" y2="1184" x1="2112" />
            <wire x2="2000" y1="1088" y2="1200" x1="2000" />
            <wire x2="2208" y1="960" y2="960" x1="2112" />
            <wire x2="2112" y1="960" y2="1088" x1="2112" />
        </branch>
        <instance x="1936" y="1328" name="XLXI_6" orien="R0" />
        <instance x="1408" y="944" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_10(7:0)">
            <wire x2="2000" y1="976" y2="976" x1="1792" />
            <wire x2="2000" y1="800" y2="976" x1="2000" />
            <wire x2="2208" y1="800" y2="800" x1="2000" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1984" y1="784" y2="784" x1="1792" />
            <wire x2="1984" y1="784" y2="864" x1="1984" />
            <wire x2="2208" y1="864" y2="864" x1="1984" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1968" y1="848" y2="848" x1="1792" />
            <wire x2="1968" y1="848" y2="1024" x1="1968" />
            <wire x2="2208" y1="1024" y2="1024" x1="1968" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="1360" y1="1440" y2="1440" x1="1184" />
            <wire x2="2192" y1="1440" y2="1440" x1="1360" />
            <wire x2="2192" y1="1440" y2="1472" x1="2192" />
            <wire x2="2208" y1="1472" y2="1472" x1="2192" />
            <wire x2="1408" y1="784" y2="784" x1="1360" />
            <wire x2="1360" y1="784" y2="1440" x1="1360" />
            <wire x2="2208" y1="1408" y2="1408" x1="2192" />
            <wire x2="2192" y1="1408" y2="1440" x1="2192" />
        </branch>
        <branch name="btn_west">
            <wire x2="1200" y1="1200" y2="1200" x1="1152" />
            <wire x2="1248" y1="1200" y2="1200" x1="1200" />
            <wire x2="1200" y1="848" y2="1200" x1="1200" />
            <wire x2="1408" y1="848" y2="848" x1="1200" />
            <wire x2="1248" y1="1184" y2="1200" x1="1248" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1280" y1="912" y2="928" x1="1280" />
            <wire x2="1408" y1="912" y2="912" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1440" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="1152" y="1200" name="btn_west" orien="R180" />
        <instance x="1376" y="1184" name="XLXI_8" orien="R270" />
        <branch name="XLXN_16">
            <wire x2="1312" y1="1184" y2="1568" x1="1312" />
            <wire x2="2656" y1="1568" y2="1568" x1="1312" />
            <wire x2="2656" y1="1056" y2="1056" x1="2640" />
            <wire x2="2656" y1="1056" y2="1568" x1="2656" />
        </branch>
    </sheet>
</drawing>