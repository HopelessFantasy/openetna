.class Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;)V
    .registers 5
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "url"
    .parameter "mode"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 71
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 72
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .line 73
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->url:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .registers 3
    .parameter "icon"

    .prologue
    .line 77
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    if-eqz v0, :cond_c

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
