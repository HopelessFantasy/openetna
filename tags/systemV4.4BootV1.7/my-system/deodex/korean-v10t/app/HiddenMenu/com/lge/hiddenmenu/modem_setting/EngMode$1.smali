.class Lcom/lge/hiddenmenu/modem_setting/EngMode$1;
.super Ljava/lang/Object;
.source "EngMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/modem_setting/EngMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/modem_setting/EngMode;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->access$000(Lcom/lge/hiddenmenu/modem_setting/EngMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;

    iget v1, v1, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentMainItem:I

    mul-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;

    iget v2, v2, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentSubItem:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;

    iget-object v2, v2, Lcom/lge/hiddenmenu/modem_setting/EngMode;->msg:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getEngineeringModeInfo(ILandroid/os/Message;)I

    .line 109
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->access$100(Lcom/lge/hiddenmenu/modem_setting/EngMode;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;

    iget v1, v1, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentMainItem:I

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/EngMode;

    iget v2, v2, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentSubItem:I

    invoke-static {v0, v1, v2}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->access$200(Lcom/lge/hiddenmenu/modem_setting/EngMode;II)V

    .line 113
    return-void
.end method
