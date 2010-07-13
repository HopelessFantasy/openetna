.class Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$1;
.super Ljava/lang/Object;
.source "GpsPhoneTestMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$1;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 55
    const-wide/16 v1, 0x64

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 56
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$1;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->access$100(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_a} :catch_b

    .line 58
    :goto_a
    return-void

    .line 57
    :catch_b
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a
.end method
