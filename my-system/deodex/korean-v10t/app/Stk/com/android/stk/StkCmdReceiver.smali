.class public Lcom/android/stk/StkCmdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StkCmdReceiver.java"


# instance fields
.field private screenIdle:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkCmdReceiver;->screenIdle:Z

    return-void
.end method

.method private handleCommandMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v1, "cmd message"

    const-string v2, "STK CMD"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    return-void
.end method

.method private handleScreenStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v1, "screen status"

    iget-boolean v2, p0, Lcom/android/stk/StkCmdReceiver;->screenIdle:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    return-void
.end method

.method private handleSessionEnd(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    return-void
.end method

.method private handleSetUpEvents(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.stk.command"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkCmdReceiver;->handleCommandMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    :cond_f
    :goto_f
    const-string v1, "android.intent.action.stk.terminate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkCmdReceiver;->handleSetUpEvents(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    :cond_1a
    const-string v1, "android.intent.action.stk.idle_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/StkCmdReceiver;->screenIdle:Z

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkCmdReceiver;->handleScreenStatus(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    :cond_28
    const-string v1, "android.intent.action.stk.busy_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 54
    :cond_30
    return-void

    .line 38
    :cond_31
    const-string v1, "android.intent.action.stk.session_end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkCmdReceiver;->handleSessionEnd(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f
.end method
