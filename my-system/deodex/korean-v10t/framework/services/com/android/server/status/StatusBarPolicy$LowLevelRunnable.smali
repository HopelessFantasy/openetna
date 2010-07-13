.class Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowLevelRunnable"
.end annotation


# instance fields
.field private do_timer:Z

.field private mRealLevel:I

.field private realplugged:I

.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 3
    .parameter

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->mRealLevel:I

    .line 1097
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->realplugged:I

    .line 1098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->do_timer:Z

    .line 1101
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->do_timer:Z

    return v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const-string v2, "StatusBarPolicy"

    .line 1106
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->mRealLevel:I

    if-gt v0, v1, :cond_3a

    iget v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->realplugged:I

    if-ne v0, v1, :cond_3a

    .line 1109
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$1700(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1110
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$1700(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1111
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->this$0:Lcom/android/server/status/StatusBarPolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarPolicy;->access$1702(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1114
    :cond_22
    const-string v0, "StatusBarPolicy"

    const-string v0, "TimerExpired LowLevelRunnable run"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const-string v0, "StatusBarPolicy"

    const-string v0, "call shutdownAfterDisablingRadio because of lack of battery"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$1600(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 1132
    :cond_3a
    return-void
.end method

.method setDoingTimer(Z)V
    .registers 2
    .parameter "doing"

    .prologue
    .line 1143
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->do_timer:Z

    .line 1144
    return-void
.end method

.method setLevel(I)V
    .registers 2
    .parameter "level_real"

    .prologue
    .line 1135
    iput p1, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->mRealLevel:I

    .line 1136
    return-void
.end method

.method setPlugged(I)V
    .registers 2
    .parameter "plugged"

    .prologue
    .line 1139
    iput p1, p0, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->realplugged:I

    .line 1140
    return-void
.end method
