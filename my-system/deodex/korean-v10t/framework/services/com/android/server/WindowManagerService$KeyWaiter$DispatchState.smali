.class public Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService$KeyWaiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DispatchState"
.end annotation


# instance fields
.field private curFocus:Lcom/android/server/WindowManagerService$WindowState;

.field private event:Landroid/view/KeyEvent;

.field private eventDispatching:Z

.field private finished:Z

.field private focus:Lcom/android/server/WindowManagerService$WindowState;

.field private focusPaused:Z

.field private gotFirstWindow:Z

.field private lastBinder:Landroid/os/IBinder;

.field private lastWin:Lcom/android/server/WindowManagerService$WindowState;

.field final synthetic this$1:Lcom/android/server/WindowManagerService$KeyWaiter;

.field private time:J

.field private timeToSwitch:J

.field private wasFrozen:Z


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService$KeyWaiter;Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 7
    .parameter
    .parameter "theEvent"
    .parameter "theFocus"

    .prologue
    .line 4791
    iput-object p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->this$1:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4792
    iput-object p3, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->focus:Lcom/android/server/WindowManagerService$WindowState;

    .line 4793
    iput-object p2, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->event:Landroid/view/KeyEvent;

    .line 4794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->time:J

    .line 4796
    invoke-static {p1}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$200(Lcom/android/server/WindowManagerService$KeyWaiter;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->lastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 4797
    invoke-static {p1}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$300(Lcom/android/server/WindowManagerService$KeyWaiter;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->lastBinder:Landroid/os/IBinder;

    .line 4798
    invoke-static {p1}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$400(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->finished:Z

    .line 4799
    invoke-static {p1}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$500(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->gotFirstWindow:Z

    .line 4800
    invoke-static {p1}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$600(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->eventDispatching:Z

    .line 4801
    invoke-static {p1}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$700(Lcom/android/server/WindowManagerService$KeyWaiter;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->timeToSwitch:J

    .line 4802
    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->wasFrozen:Z

    .line 4803
    iget-object v0, p1, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->curFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 4805
    if-eqz p3, :cond_43

    iget-object v0, p3, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    if-nez v0, :cond_65

    .line 4806
    :cond_43
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mToken is null at event dispatch!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->focusPaused:Z

    .line 4811
    :goto_64
    return-void

    .line 4809
    :cond_65
    iget-object v0, p3, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->focusPaused:Z

    goto :goto_64
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->focus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->lastWin:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->lastBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->finished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gfw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->gotFirstWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->eventDispatching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->timeToSwitch:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->wasFrozen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->focusPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mcf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;->this$1:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
