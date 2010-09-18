.class final Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mStrongRef:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;Z)V
    .registers 4
    .parameter "rd"
    .parameter "strong"

    .prologue
    .line 647
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 648
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 649
    if-eqz p2, :cond_10

    move-object v0, p1

    :goto_d
    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 650
    return-void

    .line 649
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .registers 12
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "ordered"

    .prologue
    .line 653
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 659
    .local v0, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz v0, :cond_12

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 660
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 662
    :cond_12
    return-void
.end method
