.class Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;
.super Ljava/lang/Object;
.source "WapDebug.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wap_debug/WapDebug;->selectMenuItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wap_debug/WapDebug;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;->this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v7, 0xd

    const/16 v5, 0x10

    const-string v8, "LG/KU990/v10a Browser/Obigo-Q05A/3.6 MMS/LG-MMS-V1.0/1.2 Java/ASVM/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    const-string v6, "Mozilla/5.0 (Linux; U; Android 1.5; LG Eve) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 Java/Jbed/7.0 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, uaString:Ljava/lang/String;
    invoke-static {}, Lcom/lge/hiddenmenu/wap_debug/LocaleManager;->getOperator()I

    move-result v3

    .line 84
    .local v3, operator:I
    packed-switch p2, :pswitch_data_238

    .line 251
    :goto_10
    const/4 v2, 0x0

    .line 253
    .local v2, msg:Ljava/lang/String;
    if-eqz v4, :cond_22e

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v5, "lgeHiddedMenu.intent.action.CHANGE_UASTRING"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, intent1:Landroid/content/Intent;
    const-string v5, "uastring"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v5, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;->this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;

    invoke-virtual {v5}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    iget-object v5, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;->this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;

    invoke-virtual {v5}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, items:[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    .end local v2           #msg:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "You selected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nReboot to take effect !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 266
    .end local v0           #intent1:Landroid/content/Intent;
    .end local v1           #items:[Ljava/lang/String;
    .restart local v2       #msg:Ljava/lang/String;
    :goto_5f
    iget-object v5, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;->this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;

    iget-object v5, v5, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    if-eqz v5, :cond_71

    .line 267
    iget-object v5, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;->this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;

    iget-object v5, v5, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 268
    iget-object v5, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;->this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    .line 270
    :cond_71
    iget-object v5, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;->this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;

    iget-object v6, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;->this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, v5, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    .line 271
    iget-object v5, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;->this$0:Lcom/lge/hiddenmenu/wap_debug/WapDebug;

    iget-object v5, v5, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 275
    return-void

    .line 87
    .end local v2           #msg:Ljava/lang/String;
    :pswitch_88
    packed-switch v3, :pswitch_data_26e

    :pswitch_8b
    goto :goto_10

    .line 107
    :pswitch_8c
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; LG Eve) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 Java/Jbed/7.0 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 89
    :pswitch_95
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; en-us; LG Eve-Orange) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 Java/Jbed/7.0 Profile/MIDP-2.1 Configuration/CLDC-1.1 MMS/LG-Android-MMS-V1.0/1.2"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 92
    :pswitch_9e
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; LG Eve) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 MMS/LG-Android-MMS-V1.0/1.2"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 95
    :pswitch_a7
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; LG-GW620-Bouygues) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 98
    :pswitch_b0
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-GW620 Mozilla/5.0 (Linux; U; Android 1.5) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 Java/Jbed/7.0 Profile/MIDP-2.1 Configuration/CLDC-1.1 MMS/LG-Android-MMS-V1.0/1.2"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 101
    :pswitch_b9
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; LG Eve) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 Java/Jbed/7.0 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 104
    :pswitch_c2
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; LG Eve) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 Java/Jbed/7.0 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 110
    :pswitch_cb
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; pt-br; LG Eve) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 Java/Jbed/7.0 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 113
    :pswitch_d4
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; LG Eve) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 Java/Jbed/7.0 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 116
    :pswitch_dd
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; LG Eve) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 Java/Jbed/7.0 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 123
    :pswitch_e6
    if-ne v3, v5, :cond_f1

    .line 124
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Vodafone/1.0/LG-GT505/V10a Browser/Teleca-Q7.1 MMS/LG-MMS-V1.0/1.2 MediaPlayer/LGPlayer/1.0 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1)"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 125
    :cond_f1
    if-ne v3, v7, :cond_fc

    .line 126
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-GT500-v10a Browser/Teleca-Q7.1 MMS/LG-MMS-V1.0/1.2 MediaPlayer/LGPlayer/1.0 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 128
    :cond_fc
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-GT505-Orange/V10d Browser/Teleca-Q7.1 MMS/LG-MMS-V1.0/1.2 MediaPlayer/LGPlayer/1.0 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 132
    :pswitch_105
    sparse-switch v3, :sswitch_data_29a

    .line 147
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-KC910-Orange/V10e Browser/Teleca-Q7.1 MMS/LG-MMS-V1.0/1.2 MediaPlayer/LGPlayer/1.0 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v4       #uaString:Ljava/lang/String;
    :goto_10f
    :pswitch_10f
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-GC900-orange/V09a Obigo/WAP2.0 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 153
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 134
    :sswitch_118
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Vodafone/1.0/LG-KC910/V10g Browser/Teleca-Q7.1 MMS/LG-MMS-V1.0/1.2 MediaPlayer/LGPlayer/1.0 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1)"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v4       #uaString:Ljava/lang/String;
    goto :goto_10f

    .line 137
    :sswitch_120
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-KC910-v10b Browser/Teleca-Q7.1 MMS/LG-MMS-V1.0/1.2 MediaPlayer/LGPlayer/1.0 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v4       #uaString:Ljava/lang/String;
    :sswitch_127
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-KC910Q Browser/Teleca-Q7.1 MMS/LG-MMS-V1.0/1.2 MediaPlayer/LGPlayer/1.0 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v4       #uaString:Ljava/lang/String;
    goto :goto_10f

    .line 144
    :sswitch_12f
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-KC910Qa Browser/Teleca-Q7.1 MMS/LG-MMS-V1.0/1.2 MediaPlayer/LGPlayer/1.0 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v4       #uaString:Ljava/lang/String;
    goto :goto_10f

    .line 156
    :pswitch_137
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-KF700Q Browser/Obigo-Q05A/3.12 MMS/LG-MMS-V1.0/1.2 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 160
    :pswitch_140
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/4.0 (Vodafone/1.0/LG-KF750/V10a Browser/Obigo-Q05A/3.12 MMS/LG-MMS-V1.0/1.2 Java/ASVM/1.1 Profile/MIDP-2.1 Configuration/CLDC-1.1)"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 164
    :pswitch_149
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG/KU800/v1.0"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 168
    :pswitch_152
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-KF600d Obigo/WAP2.0 MIDP-2.0/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 172
    :pswitch_15b
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG/KE990/v10a Browser/Obigo-Q05A/3.6 MMS/LG-MMS-V1.0/1.2 Java/ASVM/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 176
    :pswitch_164
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-ME970d MIC/1.1.14 MIDP-2.0/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 180
    :pswitch_16d
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG/KF755/v1.0"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 184
    :pswitch_176
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Nokia6630/1.0 (2.39.15) SymbianOS/8.0 Series60/2.6 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 188
    :pswitch_17f
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "NokiaN90-1/3.0535.4.3 Series60/2.8 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 192
    :pswitch_188
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "SAMSUNG-SGH-ZV50-Vodafone/1.0 SHP/VPP/R5 NetFront/3.3 SMM-MMS/1.2.0 profile/MIDP-2.0 configuration/CLDC-1.1 UP.Link/6.3.1.13.0"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 196
    :pswitch_191
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322)"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 200
    :pswitch_19a
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Vodafone/1.0/LG-KU580/V08j Browser/Obigo-Q05A1/2.16 MMS/LG-MMS-V1.0/1.2 Java/LGVM/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1 Ext-V-Profile/VSCL-2.0.0"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 204
    :pswitch_1a3
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-KU580-Orange/v10a Browser/Obigo-Q05A1/2.16 MMS/LG-MMS-V1.0/1.2 Java/LGVM/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 208
    :pswitch_1ac
    if-ne v3, v5, :cond_1b7

    .line 209
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Vodafone/1.0/LG-KU990/V10a Browser/Obigo-Q05A/3.6 MMS/LG-MMS-V1.0/1.2 Java/ASVM/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 210
    :cond_1b7
    if-ne v3, v7, :cond_1c2

    .line 211
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG/KU990/v10a Browser/Obigo-Q05A/3.6 MMS/LG-MMS-V1.0/1.2 Java/ASVM/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 212
    :cond_1c2
    const/4 v5, 0x5

    if-ne v3, v5, :cond_1ce

    .line 213
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG/U990/v1.0"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 214
    :cond_1ce
    const/16 v5, 0x9

    if-ne v3, v5, :cond_1db

    .line 215
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG/KU990/v10a Browser/Obigo-Q05A/3.6 MMS/LG-MMS-V1.0/1.2 Java/ASVM/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 217
    :cond_1db
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG/KU990-Orange/v10a Browser/Obigo-Q05A/3.6 MMS/LG-MMS-V1.0/1.2 Java/ASVM/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 221
    :pswitch_1e4
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG/U970/v1.0"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 225
    :pswitch_1ed
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG/U310/v1.0"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 229
    :pswitch_1f6
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "LG-KS360-Orange/V10d Teleca/WAP2.0 MIDP-2.0/CLDC-1.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 230
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 233
    :pswitch_1ff
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; LG Eve-Orange) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1 (LG_UA; AD_LOGON=LGE.NET)"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 237
    :pswitch_208
    if-ne v3, v5, :cond_213

    .line 238
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/5.0 (Linux; U; Android 1.5; de-de; HTC Magic Build/CRB17) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 240
    :cond_213
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "HTC_Magic Mozilla/0.5 (Linux; U; Android 1.5; en-ca; Build/CUPCAKE) AppleWebkit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 243
    :pswitch_21c
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/0.5 (Linux; U; Android 1.5; en-fr; HTC Hero Build/CUPCAKE) AppleWebkit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 246
    :pswitch_225
    new-instance v4, Ljava/lang/String;

    .end local v4           #uaString:Ljava/lang/String;
    const-string v5, "Mozilla/0.5 (Linux; U; Android 1.5; he-; Galaxy Build/CUPCAKE) AppleWebkit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #uaString:Ljava/lang/String;
    goto/16 :goto_10

    .line 263
    .restart local v2       #msg:Ljava/lang/String;
    :cond_22e
    new-instance v2, Ljava/lang/String;

    .end local v2           #msg:Ljava/lang/String;
    const-string v5, "Nothing is selected !"

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v2       #msg:Ljava/lang/String;
    goto/16 :goto_5f

    .line 84
    nop

    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_88
        :pswitch_e6
        :pswitch_105
        :pswitch_10f
        :pswitch_137
        :pswitch_140
        :pswitch_149
        :pswitch_152
        :pswitch_15b
        :pswitch_164
        :pswitch_16d
        :pswitch_176
        :pswitch_17f
        :pswitch_188
        :pswitch_191
        :pswitch_19a
        :pswitch_1a3
        :pswitch_1ac
        :pswitch_1e4
        :pswitch_1ed
        :pswitch_1f6
        :pswitch_1ff
        :pswitch_208
        :pswitch_21c
        :pswitch_225
    .end packed-switch

    .line 87
    :pswitch_data_26e
    .packed-switch 0x2
        :pswitch_8c
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_95
        :pswitch_d4
        :pswitch_8b
        :pswitch_8b
        :pswitch_cb
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_9e
        :pswitch_c2
        :pswitch_b0
        :pswitch_a7
        :pswitch_b9
        :pswitch_dd
    .end packed-switch

    .line 132
    :sswitch_data_29a
    .sparse-switch
        0x2 -> :sswitch_127
        0xb -> :sswitch_127
        0xd -> :sswitch_120
        0x10 -> :sswitch_118
        0x11 -> :sswitch_127
        0x15 -> :sswitch_12f
    .end sparse-switch
.end method
