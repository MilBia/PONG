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
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="Clk_50MHz" />
        <signal name="btn_south" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12(2:0)" />
        <signal name="XLXN_13(2:0)" />
        <signal name="XLXN_16(2:0)" />
        <signal name="XLXN_17(9:0)" />
        <signal name="XLXN_18(9:0)" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="btn_south" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <blockdef name="VGA_640x480">
            <timestamp>2017-3-11T13:32:52</timestamp>
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
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:35</timestamp>
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
            <timestamp>2017-3-17T11:51:48</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-272" y2="-272" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <rect width="64" x="320" y="-124" height="24" />
            <line x2="384" y1="-112" y2="-112" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="GAME">
            <timestamp>2017-3-17T13:24:44</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
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
        </blockdef>
        <block symbolname="VGA_640x480" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="btn_south" name="CLR" />
            <blockpin signalname="XLXN_16(2:0)" name="RGB(2:0)" />
            <blockpin signalname="VGA_R" name="R" />
            <blockpin signalname="VGA_G" name="G" />
            <blockpin signalname="VGA_B" name="B" />
            <blockpin signalname="VGA_HS" name="HS" />
            <blockpin signalname="VGA_VS" name="VS" />
            <blockpin signalname="XLXN_17(9:0)" name="X(9:0)" />
            <blockpin signalname="XLXN_18(9:0)" name="Y(9:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_2">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_2" name="E0" />
            <blockpin signalname="XLXN_3" name="F0" />
            <blockpin signalname="XLXN_4" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="PS2_to_STER" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="E0" />
            <blockpin signalname="XLXN_3" name="F0" />
            <blockpin signalname="XLXN_4" name="RS2_Rdy" />
            <blockpin signalname="btn_south" name="Clr" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_1(7:0)" name="D_in(7:0)" />
            <blockpin signalname="XLXN_10" name="ENTER" />
            <blockpin signalname="XLXN_11" name="ESC" />
            <blockpin signalname="XLXN_12(2:0)" name="P1(2:0)" />
            <blockpin signalname="XLXN_13(2:0)" name="P2(2:0)" />
        </block>
        <block symbolname="GAME" name="XLXI_4">
            <blockpin signalname="XLXN_10" name="ENTER" />
            <blockpin signalname="XLXN_11" name="ESC" />
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="btn_south" name="CLR" />
            <blockpin signalname="XLXN_17(9:0)" name="X(9:0)" />
            <blockpin signalname="XLXN_18(9:0)" name="Y(9:0)" />
            <blockpin signalname="XLXN_12(2:0)" name="P1(2:0)" />
            <blockpin signalname="XLXN_13(2:0)" name="P2(2:0)" />
            <blockpin signalname="XLXN_16(2:0)" name="RGB(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1200" y="784" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="880" y1="368" y2="368" x1="848" />
            <wire x2="880" y1="368" y2="752" x1="880" />
            <wire x2="1200" y1="752" y2="752" x1="880" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1200" y1="432" y2="432" x1="848" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1200" y1="496" y2="496" x1="848" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1200" y1="560" y2="560" x1="848" />
        </branch>
        <instance x="464" y="592" name="XLXI_2" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="464" y1="368" y2="368" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="368" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="464" y1="432" y2="432" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="432" name="PS2_Data" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="448" y1="688" y2="688" x1="272" />
            <wire x2="1200" y1="688" y2="688" x1="448" />
            <wire x2="448" y1="688" y2="912" x1="448" />
            <wire x2="1664" y1="912" y2="912" x1="448" />
            <wire x2="2448" y1="912" y2="912" x1="1664" />
            <wire x2="464" y1="496" y2="496" x1="448" />
            <wire x2="448" y1="496" y2="560" x1="448" />
            <wire x2="464" y1="560" y2="560" x1="448" />
            <wire x2="448" y1="560" y2="688" x1="448" />
            <wire x2="1984" y1="432" y2="432" x1="1664" />
            <wire x2="1664" y1="432" y2="912" x1="1664" />
            <wire x2="2768" y1="320" y2="320" x1="2448" />
            <wire x2="2448" y1="320" y2="912" x1="2448" />
        </branch>
        <branch name="btn_south">
            <wire x2="512" y1="752" y2="752" x1="272" />
            <wire x2="512" y1="752" y2="816" x1="512" />
            <wire x2="1696" y1="816" y2="816" x1="512" />
            <wire x2="512" y1="816" y2="848" x1="512" />
            <wire x2="2416" y1="848" y2="848" x1="512" />
            <wire x2="512" y1="624" y2="752" x1="512" />
            <wire x2="1200" y1="624" y2="624" x1="512" />
            <wire x2="1984" y1="496" y2="496" x1="1696" />
            <wire x2="1696" y1="496" y2="816" x1="1696" />
            <wire x2="2768" y1="512" y2="512" x1="2416" />
            <wire x2="2416" y1="512" y2="848" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="272" y="688" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="272" y="752" name="btn_south" orien="R180" />
        <branch name="XLXN_11">
            <wire x2="1632" y1="592" y2="592" x1="1584" />
            <wire x2="1632" y1="368" y2="592" x1="1632" />
            <wire x2="1984" y1="368" y2="368" x1="1632" />
        </branch>
        <branch name="XLXN_12(2:0)">
            <wire x2="1600" y1="672" y2="672" x1="1584" />
            <wire x2="1600" y1="672" y2="688" x1="1600" />
            <wire x2="1984" y1="688" y2="688" x1="1600" />
        </branch>
        <branch name="XLXN_13(2:0)">
            <wire x2="1984" y1="752" y2="752" x1="1584" />
        </branch>
        <branch name="XLXN_16(2:0)">
            <wire x2="2384" y1="304" y2="304" x1="2368" />
            <wire x2="2384" y1="304" y2="704" x1="2384" />
            <wire x2="2768" y1="704" y2="704" x1="2384" />
        </branch>
        <branch name="XLXN_18(9:0)">
            <wire x2="1984" y1="624" y2="624" x1="1968" />
            <wire x2="1968" y1="624" y2="880" x1="1968" />
            <wire x2="3232" y1="880" y2="880" x1="1968" />
            <wire x2="3232" y1="704" y2="704" x1="3152" />
            <wire x2="3232" y1="704" y2="880" x1="3232" />
        </branch>
        <instance x="1984" y="784" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_10">
            <wire x2="1600" y1="512" y2="512" x1="1584" />
            <wire x2="1984" y1="304" y2="304" x1="1600" />
            <wire x2="1600" y1="304" y2="512" x1="1600" />
        </branch>
        <branch name="XLXN_17(9:0)">
            <wire x2="1968" y1="192" y2="560" x1="1968" />
            <wire x2="1984" y1="560" y2="560" x1="1968" />
            <wire x2="3216" y1="192" y2="192" x1="1968" />
            <wire x2="3216" y1="192" y2="640" x1="3216" />
            <wire x2="3216" y1="640" y2="640" x1="3152" />
        </branch>
        <instance x="2768" y="736" name="XLXI_1" orien="R0">
        </instance>
        <branch name="VGA_R">
            <wire x2="3168" y1="320" y2="320" x1="3152" />
            <wire x2="3248" y1="320" y2="320" x1="3168" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3168" y1="384" y2="384" x1="3152" />
            <wire x2="3248" y1="384" y2="384" x1="3168" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3168" y1="448" y2="448" x1="3152" />
            <wire x2="3248" y1="448" y2="448" x1="3168" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3168" y1="512" y2="512" x1="3152" />
            <wire x2="3248" y1="512" y2="512" x1="3168" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3168" y1="576" y2="576" x1="3152" />
            <wire x2="3248" y1="576" y2="576" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3248" y="320" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3248" y="384" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3248" y="448" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3248" y="512" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3248" y="576" name="VGA_VS" orien="R0" />
    </sheet>
</drawing>