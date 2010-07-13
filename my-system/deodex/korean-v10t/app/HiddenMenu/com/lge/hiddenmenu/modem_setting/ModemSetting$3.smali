.class Lcom/lge/hiddenmenu/modem_setting/ModemSetting$3;
.super Landroid/os/Handler;
.source "ModemSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/modem_setting/ModemSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$3;->this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    .line 251
    return-void
.end method
