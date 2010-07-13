.class Lcom/android/browser/GearsNativeDialog$1;
.super Landroid/os/Handler;
.source "GearsNativeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/GearsNativeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/GearsNativeDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/GearsNativeDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/browser/GearsNativeDialog$1;->this$0:Lcom/android/browser/GearsNativeDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 72
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 74
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 84
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    :cond_f
    :goto_f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    return-void

    .line 75
    :cond_13
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_20

    .line 76
    iget-object v1, p0, Lcom/android/browser/GearsNativeDialog$1;->this$0:Lcom/android/browser/GearsNativeDialog;

    iget-object v1, v1, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    invoke-virtual {v1}, Lcom/android/browser/GearsBaseDialog;->updateIcon()V

    goto :goto_f

    .line 77
    :cond_20
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2a

    .line 78
    iget-object v1, p0, Lcom/android/browser/GearsNativeDialog$1;->this$0:Lcom/android/browser/GearsNativeDialog;

    invoke-static {v1, v3}, Lcom/android/browser/GearsNativeDialog;->access$000(Lcom/android/browser/GearsNativeDialog;I)V

    goto :goto_f

    .line 79
    :cond_2a
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_34

    .line 80
    iget-object v1, p0, Lcom/android/browser/GearsNativeDialog$1;->this$0:Lcom/android/browser/GearsNativeDialog;

    invoke-static {v1, v4}, Lcom/android/browser/GearsNativeDialog;->access$000(Lcom/android/browser/GearsNativeDialog;I)V

    goto :goto_f

    .line 81
    :cond_34
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_f

    .line 82
    iget-object v1, p0, Lcom/android/browser/GearsNativeDialog$1;->this$0:Lcom/android/browser/GearsNativeDialog;

    invoke-static {v1, v5}, Lcom/android/browser/GearsNativeDialog;->access$000(Lcom/android/browser/GearsNativeDialog;I)V

    goto :goto_f
.end method
