.class Lcom/android/server/am/AppWaitingForDebuggerDialog$1;
.super Landroid/os/Handler;
.source "AppWaitingForDebuggerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppWaitingForDebuggerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppWaitingForDebuggerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 69
    :goto_5
    return-void

    .line 65
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v0, v0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v1, v1, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;Z)V

    goto :goto_5

    .line 62
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
