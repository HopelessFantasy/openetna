.class Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;
.super Ljava/lang/Thread;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.device_test.CameraPreview"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-virtual {v1, v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
