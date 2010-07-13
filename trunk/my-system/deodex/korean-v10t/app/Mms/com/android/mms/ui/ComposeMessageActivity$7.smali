.class Lcom/android/mms/ui/ComposeMessageActivity$7;
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
    .line 1066
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 11
    .parameter "s"

    .prologue
    .line 1067
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v4

    .line 1068
    .local v4, oldValidCount:I
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientList;->countInvalidRecipients()I

    move-result v6

    add-int v3, v6, v4

    .line 1078
    .local v3, oldTotal:I
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 1079
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "afterTextChanged called with invisible mRecipientsEditor"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v6, "ComposeMessageActivity"

    const-string v7, "RecipientsWatcher called incorrectly"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    throw v0

    .line 1087
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_2d
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1090
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientList()Lcom/android/mms/ui/RecipientList;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2602(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList;)Lcom/android/mms/ui/RecipientList;

    .line 1092
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1099
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v2

    .line 1100
    .local v2, newValidCount:I
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientList;->countInvalidRecipients()I

    move-result v6

    add-int v1, v6, v2

    .line 1101
    .local v1, newTotal:I
    if-ne v3, v1, :cond_60

    if-le v2, v4, :cond_6c

    .line 1102
    :cond_60
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    .line 1105
    :cond_6c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1106
    .local v5, recipients:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_80

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 1107
    :cond_80
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1108
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1110
    :cond_8a
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1056
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 1064
    return-void
.end method
