.class Lcom/lge/ChargingTest/ChargingTest$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChargingTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/ChargingTest/ChargingTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/ChargingTest/ChargingTest;


# direct methods
.method private constructor <init>(Lcom/lge/ChargingTest/ChargingTest;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lge/ChargingTest/ChargingTest$ApplicationsIntentReceiver;->this$0:Lcom/lge/ChargingTest/ChargingTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/ChargingTest/ChargingTest;Lcom/lge/ChargingTest/ChargingTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/lge/ChargingTest/ChargingTest$ApplicationsIntentReceiver;-><init>(Lcom/lge/ChargingTest/ChargingTest;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/ChargingTest/ChargingTest;->access$302(Z)Z

    .line 247
    return-void
.end method
