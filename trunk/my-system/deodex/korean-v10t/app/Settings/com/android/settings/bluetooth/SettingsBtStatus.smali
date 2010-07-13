.class public Lcom/android/settings/bluetooth/SettingsBtStatus;
.super Ljava/lang/Object;
.source "SettingsBtStatus.java"


# static fields
.field public static final CONNECTION_STATUS_ACTIVE:I = 0x1

.field public static final CONNECTION_STATUS_CONNECTED:I = 0x2

.field public static final CONNECTION_STATUS_CONNECTING:I = 0x3

.field public static final CONNECTION_STATUS_DISCONNECTED:I = 0x4

.field public static final CONNECTION_STATUS_DISCONNECTING:I = 0x5

.field public static final CONNECTION_STATUS_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SettingsBtStatus"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConnectionStatusSummary(I)I
    .registers 2
    .parameter "connectionStatus"

    .prologue
    const v0, 0x7f08004c

    .line 41
    packed-switch p0, :pswitch_data_18

    .line 55
    const/4 v0, 0x0

    :goto_7
    :pswitch_7
    return v0

    .line 47
    :pswitch_8
    const v0, 0x7f08004f

    goto :goto_7

    .line 49
    :pswitch_c
    const v0, 0x7f08004d

    goto :goto_7

    .line 51
    :pswitch_10
    const v0, 0x7f08004e

    goto :goto_7

    .line 53
    :pswitch_14
    const v0, 0x7f080050

    goto :goto_7

    .line 41
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public static final getPairingStatusSummary(I)I
    .registers 2
    .parameter "bondState"

    .prologue
    .line 70
    packed-switch p0, :pswitch_data_12

    .line 78
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 72
    :pswitch_5
    const v0, 0x7f080053

    goto :goto_4

    .line 74
    :pswitch_9
    const v0, 0x7f080052

    goto :goto_4

    .line 76
    :pswitch_d
    const v0, 0x7f080051

    goto :goto_4

    .line 70
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_d
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method public static final isConnectionStatusBusy(I)Z
    .registers 2
    .parameter "connectionStatus"

    .prologue
    .line 65
    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x5

    if-ne p0, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static final isConnectionStatusConnected(I)Z
    .registers 3
    .parameter "connectionStatus"

    .prologue
    const/4 v1, 0x1

    .line 60
    if-eq p0, v1, :cond_6

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    :cond_6
    move v0, v1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
