/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/NAUKA/Xilinx/PONG/PS2_to_STER.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1046138668_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1792U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5088);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5200);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 8116);
    t5 = (t0 + 5392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 8119);
    t5 = (t0 + 5456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 8122);
    t5 = (t0 + 5520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 8125);
    t5 = (t0 + 5584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2792U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t10 = (t4 == (unsigned char)3);
    if (t10 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5200);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 5200);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 5648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB52;

LAB54:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 8219);
    t5 = (t0 + 5456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t5);

LAB53:
LAB14:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8222);
    t3 = 1;
    if (8U == 8U)
        goto LAB91;

LAB92:    t3 = 0;

LAB93:    if (t3 != 0)
        goto LAB88;

LAB90:
LAB89:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8230);
    t3 = 1;
    if (8U == 8U)
        goto LAB103;

LAB104:    t3 = 0;

LAB105:    if (t3 != 0)
        goto LAB100;

LAB102:
LAB101:    goto LAB11;

LAB13:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 8172);
    t5 = (t0 + 5392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t5);

LAB17:    goto LAB14;

LAB16:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t1 = (t0 + 8128);
    t14 = 1;
    if (8U == 8U)
        goto LAB22;

LAB23:    t14 = 0;

LAB24:    if (t14 != 0)
        goto LAB19;

LAB21:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8139);
    t3 = 1;
    if (8U == 8U)
        goto LAB30;

LAB31:    t3 = 0;

LAB32:    if (t3 != 0)
        goto LAB28;

LAB29:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8150);
    t3 = 1;
    if (8U == 8U)
        goto LAB38;

LAB39:    t3 = 0;

LAB40:    if (t3 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8161);
    t3 = 1;
    if (8U == 8U)
        goto LAB46;

LAB47:    t3 = 0;

LAB48:    if (t3 != 0)
        goto LAB44;

LAB45:
LAB20:    goto LAB17;

LAB19:    xsi_set_current_line(84, ng0);
    t17 = (t0 + 8136);
    t19 = (t0 + 5392);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 3U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB20;

LAB22:    t15 = 0;

LAB25:    if (t15 < 8U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t9 = (t7 + t15);
    t16 = (t1 + t15);
    if (*((unsigned char *)t9) != *((unsigned char *)t16))
        goto LAB23;

LAB27:    t15 = (t15 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(86, ng0);
    t8 = (t0 + 8147);
    t16 = (t0 + 5392);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB20;

LAB30:    t15 = 0;

LAB33:    if (t15 < 8U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t6 = (t2 + t15);
    t7 = (t1 + t15);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB31;

LAB35:    t15 = (t15 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(88, ng0);
    t8 = (t0 + 8158);
    t16 = (t0 + 5392);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB20;

LAB38:    t15 = 0;

LAB41:    if (t15 < 8U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t6 = (t2 + t15);
    t7 = (t1 + t15);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB39;

LAB43:    t15 = (t15 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(90, ng0);
    t8 = (t0 + 8169);
    t16 = (t0 + 5392);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB20;

LAB46:    t15 = 0;

LAB49:    if (t15 < 8U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t6 = (t2 + t15);
    t7 = (t1 + t15);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB47;

LAB51:    t15 = (t15 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 8175);
    t10 = 1;
    if (8U == 8U)
        goto LAB58;

LAB59:    t10 = 0;

LAB60:    if (t10 != 0)
        goto LAB55;

LAB57:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8186);
    t3 = 1;
    if (8U == 8U)
        goto LAB66;

LAB67:    t3 = 0;

LAB68:    if (t3 != 0)
        goto LAB64;

LAB65:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8197);
    t3 = 1;
    if (8U == 8U)
        goto LAB74;

LAB75:    t3 = 0;

LAB76:    if (t3 != 0)
        goto LAB72;

LAB73:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8208);
    t3 = 1;
    if (8U == 8U)
        goto LAB82;

LAB83:    t3 = 0;

LAB84:    if (t3 != 0)
        goto LAB80;

LAB81:
LAB56:    goto LAB53;

LAB55:    xsi_set_current_line(98, ng0);
    t9 = (t0 + 8183);
    t17 = (t0 + 5456);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t9, 3U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB56;

LAB58:    t15 = 0;

LAB61:    if (t15 < 8U)
        goto LAB62;
    else
        goto LAB60;

LAB62:    t7 = (t5 + t15);
    t8 = (t1 + t15);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB59;

LAB63:    t15 = (t15 + 1);
    goto LAB61;

LAB64:    xsi_set_current_line(100, ng0);
    t8 = (t0 + 8194);
    t16 = (t0 + 5456);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB56;

LAB66:    t15 = 0;

LAB69:    if (t15 < 8U)
        goto LAB70;
    else
        goto LAB68;

LAB70:    t6 = (t2 + t15);
    t7 = (t1 + t15);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB67;

LAB71:    t15 = (t15 + 1);
    goto LAB69;

LAB72:    xsi_set_current_line(102, ng0);
    t8 = (t0 + 8205);
    t16 = (t0 + 5456);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB56;

LAB74:    t15 = 0;

LAB77:    if (t15 < 8U)
        goto LAB78;
    else
        goto LAB76;

LAB78:    t6 = (t2 + t15);
    t7 = (t1 + t15);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB75;

LAB79:    t15 = (t15 + 1);
    goto LAB77;

LAB80:    xsi_set_current_line(104, ng0);
    t8 = (t0 + 8216);
    t16 = (t0 + 5456);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB56;

LAB82:    t15 = 0;

LAB85:    if (t15 < 8U)
        goto LAB86;
    else
        goto LAB84;

LAB86:    t6 = (t2 + t15);
    t7 = (t1 + t15);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB83;

LAB87:    t15 = (t15 + 1);
    goto LAB85;

LAB88:    xsi_set_current_line(111, ng0);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t4 = *((unsigned char *)t9);
    t10 = (t4 == (unsigned char)2);
    if (t10 != 0)
        goto LAB97;

LAB99:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB98:    goto LAB89;

LAB91:    t15 = 0;

LAB94:    if (t15 < 8U)
        goto LAB95;
    else
        goto LAB93;

LAB95:    t6 = (t2 + t15);
    t7 = (t1 + t15);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB92;

LAB96:    t15 = (t15 + 1);
    goto LAB94;

LAB97:    xsi_set_current_line(112, ng0);
    t8 = (t0 + 5264);
    t16 = (t8 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB98;

LAB100:    xsi_set_current_line(118, ng0);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t4 = *((unsigned char *)t9);
    t10 = (t4 == (unsigned char)2);
    if (t10 != 0)
        goto LAB109;

LAB111:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB110:    goto LAB101;

LAB103:    t15 = 0;

LAB106:    if (t15 < 8U)
        goto LAB107;
    else
        goto LAB105;

LAB107:    t6 = (t2 + t15);
    t7 = (t1 + t15);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB104;

LAB108:    t15 = (t15 + 1);
    goto LAB106;

LAB109:    xsi_set_current_line(119, ng0);
    t8 = (t0 + 5328);
    t16 = (t8 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB110;

}

static void work_a_1046138668_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 4520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 8238);
    t5 = xsi_mem_cmp(t2, t3, 8U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 8246);
    t8 = xsi_mem_cmp(t6, t3, 8U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 8254);
    t11 = xsi_mem_cmp(t9, t3, 8U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 8262);
    t14 = xsi_mem_cmp(t12, t3, 8U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 8282);
    t4 = (t0 + 5712);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(130, ng0);

LAB17:    t2 = (t0 + 5104);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(132, ng0);
    t15 = (t0 + 8270);
    t17 = (t0 + 5712);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t15, 3U);
    xsi_driver_first_trans_fast(t17);
    goto LAB4;

LAB6:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 8273);
    t4 = (t0 + 5712);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 8276);
    t4 = (t0 + 5712);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 8279);
    t4 = (t0 + 5712);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 5104);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_1046138668_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 4768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 8285);
    t5 = xsi_mem_cmp(t2, t3, 8U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 8293);
    t8 = xsi_mem_cmp(t6, t3, 8U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 8301);
    t11 = xsi_mem_cmp(t9, t3, 8U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 8309);
    t14 = xsi_mem_cmp(t12, t3, 8U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 8329);
    t4 = (t0 + 5776);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(139, ng0);

LAB17:    t2 = (t0 + 5120);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(141, ng0);
    t15 = (t0 + 8317);
    t17 = (t0 + 5776);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t15, 3U);
    xsi_driver_first_trans_fast(t17);
    goto LAB4;

LAB6:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 8320);
    t4 = (t0 + 5776);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 8323);
    t4 = (t0 + 5776);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 8326);
    t4 = (t0 + 5776);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 5120);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}


extern void work_a_1046138668_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1046138668_3212880686_p_0,(void *)work_a_1046138668_3212880686_p_1,(void *)work_a_1046138668_3212880686_p_2};
	xsi_register_didat("work_a_1046138668_3212880686", "isim/PS2_to_STER_tb_isim_beh.exe.sim/work/a_1046138668_3212880686.didat");
	xsi_register_executes(pe);
}
