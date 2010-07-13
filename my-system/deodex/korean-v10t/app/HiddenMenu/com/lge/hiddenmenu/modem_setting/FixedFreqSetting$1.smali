.class Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;
.super Ljava/lang/Object;
.source "FixedFreqSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const-string v8, "f_FA_enabled: "

    const-string v7, "Enter newFANum:"

    const-string v6, "HiddenMenu.Fixed Freq"

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, f_FA_enabled:I
    const/4 v3, 0x0

    .line 80
    .local v3, newFANum:I
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;

    invoke-static {v4}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->access$000(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, fixedFreq:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;

    invoke-static {v4}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->access$100(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 84
    .local v0, FREQNVmsg:Landroid/os/Message;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 93
    :goto_2c
    const-string v4, "HiddenMenu.Fixed Freq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Fixed Freq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez v3, :cond_7e

    .line 97
    const/4 v1, 0x0

    .line 98
    const-string v4, "HiddenMenu.Fixed Freq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter newFANum:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f_FA_enabled: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;

    invoke-static {v4}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->access$200(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lcom/android/internal/telephony/Phone;->setNV_DL_FREQ_EN(ILandroid/os/Message;)I

    .line 101
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;

    invoke-static {v4}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->access$200(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lcom/android/internal/telephony/Phone;->setNV_DL_FREQ(ILandroid/os/Message;)I

    .line 111
    :goto_7b
    return-void

    .line 90
    :cond_7c
    const/4 v3, 0x0

    goto :goto_2c

    .line 105
    :cond_7e
    const/4 v1, 0x1

    .line 106
    const-string v4, "HiddenMenu.Fixed Freq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter newFANum:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f_FA_enabled: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;

    invoke-static {v4}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->access$200(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lcom/android/internal/telephony/Phone;->setNV_DL_FREQ_EN(ILandroid/os/Message;)I

    .line 109
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;

    invoke-static {v4}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->access$200(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lcom/android/internal/telephony/Phone;->setNV_DL_FREQ(ILandroid/os/Message;)I

    goto :goto_7b
.end method
