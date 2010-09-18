.class abstract Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;
.super Ljava/util/TimerTask;
.source "NetInitiatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "UpdateTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract displayRemainTime(II)V
.end method

.method public abstract onTimeOut()V
.end method

.method public run()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x3e8

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v7}, Lcom/android/internal/app/NetInitiatedActivity;->access$100(Lcom/android/internal/app/NetInitiatedActivity;)J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 105
    .local v0, millis:J
    iget-object v5, p0, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v5}, Lcom/android/internal/app/NetInitiatedActivity;->access$200(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v5

    div-long v6, v0, v9

    long-to-int v6, v6

    sub-int v4, v5, v6

    .line 106
    .local v4, totalRemainSeconds:I
    div-int/lit8 v2, v4, 0x3c

    .line 107
    .local v2, minutes:I
    rem-int/lit8 v3, v4, 0x3c

    .line 109
    .local v3, secs:I
    iget-object v5, p0, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v5}, Lcom/android/internal/app/NetInitiatedActivity;->access$400(Lcom/android/internal/app/NetInitiatedActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v6}, Lcom/android/internal/app/NetInitiatedActivity;->access$300(Lcom/android/internal/app/NetInitiatedActivity;)Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;->displayRemainTime(II)V

    .line 113
    if-gtz v4, :cond_35

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;->onTimeOut()V

    .line 120
    :goto_34
    return-void

    .line 118
    :cond_35
    iget-object v5, p0, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v5}, Lcom/android/internal/app/NetInitiatedActivity;->access$400(Lcom/android/internal/app/NetInitiatedActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v6}, Lcom/android/internal/app/NetInitiatedActivity;->access$300(Lcom/android/internal/app/NetInitiatedActivity;)Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;

    move-result-object v6

    invoke-virtual {v5, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_34
.end method
