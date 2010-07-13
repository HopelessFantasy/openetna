.class abstract Lcom/android/stk/StkApp;
.super Landroid/app/Application;
.source "StkApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkApp$1;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field static final MENU_ID_BACK:I = 0x2

.field static final MENU_ID_END_SESSION:I = 0x1

.field static final MENU_ID_HELP:I = 0x3

.field public static final TAG:Ljava/lang/String; = "STK App"

.field static final TONE_DFEAULT_TIMEOUT:I = 0x7d0

.field static final UI_TIMEOUT:I = 0xea60

.field static final UI_TIMEOUT_SHORT:I = 0x4e20


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 67
    return-void
.end method

.method public static calculateDurationInMilis(Lcom/android/internal/telephony/gsm/stk/Duration;)I
    .registers 4
    .parameter "duration"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, timeout:I
    if-eqz p0, :cond_15

    .line 57
    sget-object v1, Lcom/android/stk/StkApp$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$Duration$TimeUnit:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 66
    const/16 v0, 0x3e8

    .line 69
    :goto_12
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeInterval:I

    mul-int/2addr v0, v1

    .line 71
    :cond_15
    return v0

    .line 59
    :pswitch_16
    const v0, 0xea60

    .line 60
    goto :goto_12

    .line 62
    :pswitch_1a
    const/16 v0, 0x2710

    .line 63
    goto :goto_12

    .line 57
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1a
    .end packed-switch
.end method
