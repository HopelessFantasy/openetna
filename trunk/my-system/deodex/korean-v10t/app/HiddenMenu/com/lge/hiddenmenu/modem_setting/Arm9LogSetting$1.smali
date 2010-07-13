.class Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting$1;
.super Landroid/os/Handler;
.source "Arm9LogSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    .line 109
    return-void
.end method
