.class Lcom/android/mms/ui/ComposeMessageActivity$22;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 3613
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 3614
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3605
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3608
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3609
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;I)V

    .line 3611
    :cond_d
    return-void
.end method
