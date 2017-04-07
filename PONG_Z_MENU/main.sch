<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5(2:0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(7:0)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_28(2:0)" />
        <signal name="XLXN_30(2:0)" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_38(9:0)" />
        <signal name="XLXN_39(9:0)" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_49" />
        <signal name="btn_south" />
        <signal name="XLXN_51" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62(2:0)" />
        <signal name="XLXN_63(2:0)" />
        <signal name="XLXN_64" />
        <signal name="XLXN_75" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="btn_south" />
        <blockdef name="GAME">
            <timestamp>2017-4-7T12:43:36</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="256" x="64" y="-512" height="768" />
        </blockdef>
        <blockdef name="MENU">
            <timestamp>2017-4-7T12:43:52</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-512" height="576" />
        </blockdef>
        <blockdef name="OUTPUT">
            <timestamp>2017-4-6T20:28:25</timestamp>
            <rect width="256" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-464" y2="-464" x1="320" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <line x2="384" y1="-176" y2="-176" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="PS2_to_STER">
            <timestamp>2017-4-6T20:28:19</timestamp>
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
        <blockdef name="VGA_640x480">
            <timestamp>2017-4-6T20:28:14</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="GAME" name="XLXI_1">
            <blockpin signalname="XLXN_16" name="ENTER" />
            <blockpin signalname="XLXN_18" name="ESC" />
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="btn_south" name="CLR" />
            <blockpin signalname="XLXN_60" name="Play" />
            <blockpin signalname="XLXN_61" name="Pouse" />
            <blockpin signalname="XLXN_38(9:0)" name="X(9:0)" />
            <blockpin signalname="XLXN_39(9:0)" name="Y(9:0)" />
            <blockpin signalname="XLXN_28(2:0)" name="P1(2:0)" />
            <blockpin signalname="XLXN_30(2:0)" name="P2(2:0)" />
            <blockpin signalname="XLXN_62(2:0)" name="P1_RGB(2:0)" />
            <blockpin signalname="XLXN_63(2:0)" name="P2_RGB(2:0)" />
            <blockpin signalname="XLXN_75" name="Finish" />
            <blockpin signalname="XLXN_5(2:0)" name="RGB(2:0)" />
        </block>
        <block symbolname="MENU" name="XLXI_2">
            <blockpin signalname="XLXN_16" name="ENTER" />
            <blockpin signalname="XLXN_18" name="ESC" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="btn_south" name="Reset" />
            <blockpin signalname="XLXN_49" name="Busy" />
            <blockpin signalname="XLXN_75" name="Finish" />
            <blockpin signalname="XLXN_28(2:0)" name="STER1(2:0)" />
            <blockpin signalname="XLXN_20" name="Char_WE" />
            <blockpin signalname="XLXN_64" name="NewLine" />
            <blockpin signalname="XLXN_82" name="Goto00" />
            <blockpin signalname="XLXN_60" name="Play" />
            <blockpin signalname="XLXN_61" name="Pouse" />
            <blockpin signalname="XLXN_21(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_62(2:0)" name="P1_RGB(2:0)" />
            <blockpin signalname="XLXN_63(2:0)" name="P2_RGB(2:0)" />
        </block>
        <block symbolname="OUTPUT" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="HS1" />
            <blockpin signalname="XLXN_7" name="VS1" />
            <blockpin signalname="XLXN_8" name="R1" />
            <blockpin signalname="XLXN_9" name="G1" />
            <blockpin signalname="XLXN_10" name="B1" />
            <blockpin signalname="XLXN_24" name="HS2" />
            <blockpin signalname="XLXN_25" name="VS2" />
            <blockpin signalname="XLXN_26" name="RGB2" />
            <blockpin signalname="XLXN_60" name="Play" />
            <blockpin signalname="XLXN_61" name="Pouse" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_4">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_2" name="E0" />
            <blockpin signalname="XLXN_3" name="F0" />
            <blockpin signalname="XLXN_4" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="PS2_to_STER" name="XLXI_5">
            <blockpin signalname="XLXN_2" name="E0" />
            <blockpin signalname="XLXN_3" name="F0" />
            <blockpin signalname="XLXN_4" name="RS2_Rdy" />
            <blockpin signalname="btn_south" name="Clr" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_1(7:0)" name="D_in(7:0)" />
            <blockpin signalname="XLXN_16" name="ENTER" />
            <blockpin signalname="XLXN_18" name="ESC" />
            <blockpin signalname="XLXN_28(2:0)" name="P1(2:0)" />
            <blockpin signalname="XLXN_30(2:0)" name="P2(2:0)" />
        </block>
        <block symbolname="VGA_640x480" name="XLXI_6">
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="btn_south" name="CLR" />
            <blockpin signalname="XLXN_5(2:0)" name="RGB(2:0)" />
            <blockpin signalname="XLXN_8" name="R" />
            <blockpin signalname="XLXN_9" name="G" />
            <blockpin signalname="XLXN_10" name="B" />
            <blockpin signalname="XLXN_6" name="HS" />
            <blockpin signalname="XLXN_7" name="VS" />
            <blockpin signalname="XLXN_38(9:0)" name="X(9:0)" />
            <blockpin signalname="XLXN_39(9:0)" name="Y(9:0)" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_7">
            <blockpin signalname="XLXN_21(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_83" name="Home" />
            <blockpin signalname="XLXN_64" name="NewLine" />
            <blockpin signalname="XLXN_82" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_83" name="CursorOn" />
            <blockpin signalname="XLXN_83" name="ScrollEn" />
            <blockpin signalname="XLXN_83" name="ScrollClear" />
            <blockpin signalname="XLXN_51" name="Busy" />
            <blockpin signalname="XLXN_24" name="VGA_HS" />
            <blockpin signalname="XLXN_25" name="VGA_VS" />
            <blockpin signalname="XLXN_26" name="VGA_RGB" />
            <blockpin signalname="XLXN_20" name="Char_WE" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_51" name="I0" />
            <blockpin signalname="btn_south" name="I1" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_9">
            <blockpin signalname="XLXN_83" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2848" y="1184" name="XLXI_3" orien="R0">
        </instance>
        <instance x="848" y="1120" name="XLXI_5" orien="R0">
        </instance>
        <instance x="208" y="1040" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="720" y1="816" y2="816" x1="592" />
            <wire x2="720" y1="816" y2="1088" x1="720" />
            <wire x2="848" y1="1088" y2="1088" x1="720" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="736" y1="880" y2="880" x1="592" />
            <wire x2="736" y1="768" y2="880" x1="736" />
            <wire x2="848" y1="768" y2="768" x1="736" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="752" y1="944" y2="944" x1="592" />
            <wire x2="752" y1="832" y2="944" x1="752" />
            <wire x2="848" y1="832" y2="832" x1="752" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="768" y1="1008" y2="1008" x1="592" />
            <wire x2="768" y1="896" y2="1008" x1="768" />
            <wire x2="848" y1="896" y2="896" x1="768" />
        </branch>
        <branch name="XLXN_5(2:0)">
            <wire x2="2144" y1="192" y2="192" x1="1984" />
            <wire x2="2144" y1="192" y2="656" x1="2144" />
            <wire x2="2160" y1="656" y2="656" x1="2144" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2720" y1="464" y2="464" x1="2544" />
            <wire x2="2720" y1="464" y2="576" x1="2720" />
            <wire x2="2848" y1="576" y2="576" x1="2720" />
        </branch>
        <instance x="2160" y="688" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="2688" y1="272" y2="272" x1="2544" />
            <wire x2="2688" y1="272" y2="704" x1="2688" />
            <wire x2="2848" y1="704" y2="704" x1="2688" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2672" y1="336" y2="336" x1="2544" />
            <wire x2="2672" y1="336" y2="768" x1="2672" />
            <wire x2="2848" y1="768" y2="768" x1="2672" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2656" y1="400" y2="400" x1="2544" />
            <wire x2="2656" y1="400" y2="832" x1="2656" />
            <wire x2="2848" y1="832" y2="832" x1="2656" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2704" y1="528" y2="528" x1="2544" />
            <wire x2="2704" y1="528" y2="640" x1="2704" />
            <wire x2="2848" y1="640" y2="640" x1="2704" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2096" y1="1296" y2="1296" x1="1984" />
            <wire x2="2096" y1="1296" y2="1360" x1="2096" />
            <wire x2="2208" y1="1360" y2="1360" x1="2096" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2768" y1="1424" y2="1424" x1="2640" />
            <wire x2="2768" y1="1024" y2="1424" x1="2768" />
            <wire x2="2848" y1="1024" y2="1024" x1="2768" />
        </branch>
        <branch name="XLXN_30(2:0)">
            <wire x2="1248" y1="1056" y2="1056" x1="1232" />
            <wire x2="1600" y1="640" y2="640" x1="1248" />
            <wire x2="1248" y1="640" y2="1056" x1="1248" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3328" y1="576" y2="576" x1="3232" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3328" y1="720" y2="720" x1="3232" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3328" y1="864" y2="864" x1="3232" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3328" y1="1008" y2="1008" x1="3232" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3328" y1="1152" y2="1152" x1="3232" />
        </branch>
        <branch name="XLXN_38(9:0)">
            <wire x2="2560" y1="80" y2="80" x1="1584" />
            <wire x2="2560" y1="80" y2="592" x1="2560" />
            <wire x2="1584" y1="80" y2="448" x1="1584" />
            <wire x2="1600" y1="448" y2="448" x1="1584" />
            <wire x2="2560" y1="592" y2="592" x1="2544" />
        </branch>
        <branch name="XLXN_39(9:0)">
            <wire x2="2592" y1="48" y2="48" x1="1552" />
            <wire x2="2592" y1="48" y2="656" x1="2592" />
            <wire x2="1552" y1="48" y2="512" x1="1552" />
            <wire x2="1600" y1="512" y2="512" x1="1552" />
            <wire x2="2592" y1="656" y2="656" x1="2544" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="208" y1="816" y2="816" x1="160" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="208" y1="880" y2="880" x1="176" />
        </branch>
        <instance x="1072" y="1712" name="XLXI_8" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="992" y1="1648" y2="2048" x1="992" />
            <wire x2="2720" y1="2048" y2="2048" x1="992" />
            <wire x2="1072" y1="1648" y2="1648" x1="992" />
            <wire x2="2720" y1="1552" y2="1552" x1="2640" />
            <wire x2="2720" y1="1552" y2="2048" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="3328" y="576" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3328" y="720" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3328" y="864" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3328" y="1008" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3328" y="1152" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="192" y="1456" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="160" y="816" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="176" y="1536" name="btn_south" orien="R180" />
        <iomarker fontsize="28" x="176" y="880" name="PS2_Data" orien="R180" />
        <instance x="1600" y="672" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_60">
            <wire x2="1504" y1="704" y2="1088" x1="1504" />
            <wire x2="2000" y1="1088" y2="1088" x1="1504" />
            <wire x2="2848" y1="1088" y2="1088" x1="2000" />
            <wire x2="2000" y1="1088" y2="1488" x1="2000" />
            <wire x2="1600" y1="704" y2="704" x1="1504" />
            <wire x2="2000" y1="1488" y2="1488" x1="1984" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="1600" y1="768" y2="768" x1="1488" />
            <wire x2="1488" y1="768" y2="1152" x1="1488" />
            <wire x2="2048" y1="1152" y2="1152" x1="1488" />
            <wire x2="2848" y1="1152" y2="1152" x1="2048" />
            <wire x2="2048" y1="1152" y2="1552" x1="2048" />
            <wire x2="2048" y1="1552" y2="1552" x1="1984" />
        </branch>
        <branch name="XLXN_62(2:0)">
            <wire x2="1600" y1="832" y2="832" x1="1520" />
            <wire x2="1520" y1="832" y2="1920" x1="1520" />
            <wire x2="2080" y1="1920" y2="1920" x1="1520" />
            <wire x2="2080" y1="1680" y2="1680" x1="1984" />
            <wire x2="2080" y1="1680" y2="1920" x1="2080" />
        </branch>
        <instance x="2080" y="1872" name="XLXI_9" orien="R0" />
        <branch name="XLXN_21(7:0)">
            <wire x2="2112" y1="1616" y2="1616" x1="1984" />
            <wire x2="2112" y1="1296" y2="1616" x1="2112" />
            <wire x2="2208" y1="1296" y2="1296" x1="2112" />
        </branch>
        <branch name="XLXN_28(2:0)">
            <wire x2="1408" y1="960" y2="960" x1="1232" />
            <wire x2="1408" y1="960" y2="1696" x1="1408" />
            <wire x2="1600" y1="1696" y2="1696" x1="1408" />
            <wire x2="1600" y1="576" y2="576" x1="1408" />
            <wire x2="1408" y1="576" y2="960" x1="1408" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1600" y1="1616" y2="1616" x1="1328" />
        </branch>
        <branch name="btn_south">
            <wire x2="832" y1="1536" y2="1536" x1="176" />
            <wire x2="992" y1="1536" y2="1536" x1="832" />
            <wire x2="992" y1="1536" y2="1584" x1="992" />
            <wire x2="1072" y1="1584" y2="1584" x1="992" />
            <wire x2="1472" y1="1536" y2="1536" x1="992" />
            <wire x2="1600" y1="1536" y2="1536" x1="1472" />
            <wire x2="848" y1="960" y2="960" x1="832" />
            <wire x2="832" y1="960" y2="1536" x1="832" />
            <wire x2="1472" y1="384" y2="992" x1="1472" />
            <wire x2="1472" y1="992" y2="1536" x1="1472" />
            <wire x2="2048" y1="992" y2="992" x1="1472" />
            <wire x2="1600" y1="384" y2="384" x1="1472" />
            <wire x2="2160" y1="464" y2="464" x1="2048" />
            <wire x2="2048" y1="464" y2="992" x1="2048" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1392" y1="864" y2="864" x1="1232" />
            <wire x2="1392" y1="864" y2="1376" x1="1392" />
            <wire x2="1600" y1="1376" y2="1376" x1="1392" />
            <wire x2="1600" y1="256" y2="256" x1="1392" />
            <wire x2="1392" y1="256" y2="864" x1="1392" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1376" y1="768" y2="768" x1="1232" />
            <wire x2="1376" y1="768" y2="1296" x1="1376" />
            <wire x2="1600" y1="1296" y2="1296" x1="1376" />
            <wire x2="1600" y1="192" y2="192" x1="1376" />
            <wire x2="1376" y1="192" y2="768" x1="1376" />
        </branch>
        <instance x="1600" y="1776" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_63(2:0)">
            <wire x2="1536" y1="896" y2="1888" x1="1536" />
            <wire x2="2048" y1="1888" y2="1888" x1="1536" />
            <wire x2="1600" y1="896" y2="896" x1="1536" />
            <wire x2="2048" y1="1744" y2="1744" x1="1984" />
            <wire x2="2048" y1="1744" y2="1888" x1="2048" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="1552" y1="1040" y2="1808" x1="1552" />
            <wire x2="1600" y1="1808" y2="1808" x1="1552" />
            <wire x2="2000" y1="1040" y2="1040" x1="1552" />
            <wire x2="2000" y1="704" y2="704" x1="1984" />
            <wire x2="2000" y1="704" y2="1040" x1="2000" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2752" y1="1360" y2="1360" x1="2640" />
            <wire x2="2752" y1="960" y2="1360" x1="2752" />
            <wire x2="2848" y1="960" y2="960" x1="2752" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="2736" y1="1296" y2="1296" x1="2640" />
            <wire x2="2736" y1="896" y2="1296" x1="2736" />
            <wire x2="2848" y1="896" y2="896" x1="2736" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="208" y1="1456" y2="1456" x1="192" />
            <wire x2="784" y1="1456" y2="1456" x1="208" />
            <wire x2="1440" y1="1456" y2="1456" x1="784" />
            <wire x2="1600" y1="1456" y2="1456" x1="1440" />
            <wire x2="208" y1="1456" y2="1968" x1="208" />
            <wire x2="2192" y1="1968" y2="1968" x1="208" />
            <wire x2="2208" y1="1968" y2="1968" x1="2192" />
            <wire x2="208" y1="944" y2="1008" x1="208" />
            <wire x2="208" y1="1008" y2="1456" x1="208" />
            <wire x2="848" y1="1024" y2="1024" x1="784" />
            <wire x2="784" y1="1024" y2="1456" x1="784" />
            <wire x2="1600" y1="320" y2="320" x1="1440" />
            <wire x2="1440" y1="320" y2="976" x1="1440" />
            <wire x2="1440" y1="976" y2="1456" x1="1440" />
            <wire x2="2032" y1="976" y2="976" x1="1440" />
            <wire x2="2032" y1="272" y2="976" x1="2032" />
            <wire x2="2160" y1="272" y2="272" x1="2032" />
            <wire x2="2192" y1="1904" y2="1968" x1="2192" />
            <wire x2="2208" y1="1904" y2="1904" x1="2192" />
        </branch>
        <instance x="2208" y="1904" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_64">
            <wire x2="2080" y1="1360" y2="1360" x1="1984" />
            <wire x2="2080" y1="1360" y2="1520" x1="2080" />
            <wire x2="2208" y1="1520" y2="1520" x1="2080" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="2064" y1="1424" y2="1424" x1="1984" />
            <wire x2="2064" y1="1424" y2="1584" x1="2064" />
            <wire x2="2208" y1="1584" y2="1584" x1="2064" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="2144" y1="1680" y2="1744" x1="2144" />
            <wire x2="2176" y1="1680" y2="1680" x1="2144" />
            <wire x2="2176" y1="1680" y2="1744" x1="2176" />
            <wire x2="2176" y1="1744" y2="1808" x1="2176" />
            <wire x2="2208" y1="1808" y2="1808" x1="2176" />
            <wire x2="2208" y1="1744" y2="1744" x1="2176" />
            <wire x2="2208" y1="1680" y2="1680" x1="2176" />
            <wire x2="2208" y1="1456" y2="1456" x1="2176" />
            <wire x2="2176" y1="1456" y2="1680" x1="2176" />
        </branch>
    </sheet>
</drawing>