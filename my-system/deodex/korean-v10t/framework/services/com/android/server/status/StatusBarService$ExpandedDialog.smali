.class Lcom/android/server/status/StatusBarService$ExpandedDialog;
.super Landroid/app/Dialog;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$ExpandedDialog;->this$0:Lcom/android/server/status/StatusBarService;

    .line 163
    const v0, 0x103000d

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 164
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_14

    move v0, v2

    .line 169
    .local v0, down:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 176
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_13
    return v1

    .line 168
    .end local v0           #down:Z
    :cond_14
    const/4 v1, 0x0

    move v0, v1

    goto :goto_8

    .line 171
    .restart local v0       #down:Z
    :pswitch_17
    if-eqz v0, :cond_1e

    .line 172
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$ExpandedDialog;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarService;->deactivate()V

    :cond_1e
    move v1, v2

    .line 174
    goto :goto_13

    .line 169
    :pswitch_data_20
    .packed-switch 0x4
        :pswitch_17
    .end packed-switch
.end method
