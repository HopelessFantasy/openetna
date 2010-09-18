.class Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;
.super Ljava/lang/Object;
.source "OperatorMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/modem_setting/OperatorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget-object v0, v0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget-object v0, v0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mFlexOperatorCode:Ljava/lang/String;

    const-string v1, "TLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    .line 136
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->access$000(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v1, v1, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentMainItem:I

    mul-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v2, v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget-object v2, v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->msg:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getEngineeringModeInfo(ILandroid/os/Message;)I

    .line 144
    :goto_2e
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->access$100(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v1, v1, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentMainItem:I

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v2, v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    invoke-static {v0, v1, v2}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->access$200(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;II)V

    .line 148
    return-void

    .line 140
    :cond_47
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->access$000(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v1, v1, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentMainItem:I

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v2, v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget-object v2, v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->msg:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getEngineeringModeInfo(ILandroid/os/Message;)I

    goto :goto_2e
.end method
