.class public Lcom/android/settings/wifi/WifiStatus;
.super Ljava/lang/Object;
.source "WifiStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiStatus$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static getPrintable(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "detailedState"

    .prologue
    const/4 v2, 0x0

    .line 46
    sget-object v0, Lcom/android/settings/wifi/WifiStatus$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    move-object v0, v2

    .line 82
    :goto_d
    return-object v0

    .line 48
    :pswitch_e
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 50
    :pswitch_16
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 52
    :pswitch_1e
    const v0, 0x7f0801a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_26
    move-object v0, v2

    .line 58
    goto :goto_d

    :pswitch_28
    move-object v0, v2

    .line 66
    goto :goto_d

    .line 70
    :pswitch_2a
    const v0, 0x7f0801a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 72
    :pswitch_32
    const v0, 0x7f0801a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_3a
    move-object v0, v2

    .line 78
    goto :goto_d

    .line 46
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_1e
        :pswitch_26
        :pswitch_28
        :pswitch_2a
        :pswitch_32
        :pswitch_3a
    .end packed-switch
.end method

.method public static getPrintableFragment(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "detailedState"
    .parameter "apName"

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, fragment:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/wifi/WifiStatus$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    .line 117
    :goto_c
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :pswitch_17
    const v1, 0x7f080199

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    goto :goto_c

    .line 95
    :pswitch_1f
    const v1, 0x7f08019b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    goto :goto_c

    .line 98
    :pswitch_27
    const v1, 0x7f080198

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    goto :goto_c

    .line 101
    :pswitch_2f
    const v1, 0x7f08019d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    goto :goto_c

    .line 104
    :pswitch_37
    const v1, 0x7f08019c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    goto :goto_c

    .line 107
    :pswitch_3f
    const v1, 0x7f08019e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    goto :goto_c

    .line 110
    :pswitch_47
    const v1, 0x7f08019a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    goto :goto_c

    .line 113
    :pswitch_4f
    const v1, 0x7f080197

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 90
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1f
        :pswitch_27
        :pswitch_2f
        :pswitch_37
        :pswitch_3f
        :pswitch_47
        :pswitch_4f
    .end packed-switch
.end method

.method public static getStatus(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "ssid"
    .parameter "detailedState"

    .prologue
    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p2}, Lcom/android/settings/wifi/WifiStatus;->isLiveConnection(Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 30
    invoke-static {p0, p2, p1}, Lcom/android/settings/wifi/WifiStatus;->getPrintableFragment(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_10
    return-object v0

    :cond_11
    invoke-static {p0, p2}, Lcom/android/settings/wifi/WifiStatus;->getPrintable(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static isLiveConnection(Landroid/net/NetworkInfo$DetailedState;)Z
    .registers 2
    .parameter "detailedState"

    .prologue
    .line 37
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v0, :cond_12

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v0, :cond_12

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v0, :cond_12

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
