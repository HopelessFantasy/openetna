.class Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;
.super Landroid/os/CountDownTimer;
.source "KRSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/kr_setting/KRSetting;->setTestBedSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/kr_setting/KRSetting;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    invoke-static {v0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->access$100(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    invoke-static {v0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->access$200(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 145
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    const-string v1, "Auto-Generated KR WAP Setting is already existed!"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->showToastPopup(Ljava/lang/String;)V

    .line 159
    :goto_18
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    invoke-static {v0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->access$500(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)V

    .line 160
    return-void

    .line 147
    :cond_1e
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    invoke-static {v0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->access$300(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 148
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    const-string v1, "Auto-Generated KR MMS Setting is already existed!"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->showToastPopup(Ljava/lang/String;)V

    goto :goto_18

    .line 150
    :cond_2e
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    invoke-static {v0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->access$400(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 151
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    const-string v1, "Auto-Generated KR SyncML Setting is already existed!"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->showToastPopup(Ljava/lang/String;)V

    goto :goto_18

    .line 154
    :cond_3e
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    iget-object v1, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->showToastPopup(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public onTick(J)V
    .registers 3
    .parameter "millisUntilFinished"

    .prologue
    .line 138
    return-void
.end method
