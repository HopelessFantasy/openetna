.class Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsPhoneTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;
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
    .line 129
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$2;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 130
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "GpsBeginReceiver..onReceive..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    return-void
.end method
