.class Lcom/android/contacts/ViewContactLogsActivity$1;
.super Ljava/lang/Object;
.source "ViewContactLogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactLogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactLogsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactLogsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 392
    const/4 v1, -0x1

    if-ne p2, v1, :cond_47

    .line 393
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    iget-object v2, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v2}, Lcom/android/contacts/ViewContactLogsActivity;->access$100(Lcom/android/contacts/ViewContactLogsActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/contacts/ViewContactLogsActivity;->access$002(Lcom/android/contacts/ViewContactLogsActivity;I)I

    .line 394
    const/4 v0, 0x1

    .line 395
    .local v0, message:I
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v1}, Lcom/android/contacts/ViewContactLogsActivity;->access$100(Lcom/android/contacts/ViewContactLogsActivity;)I

    move-result v1

    if-ne v1, v3, :cond_31

    .line 396
    const/4 v0, 0x1

    .line 402
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    iget-object v1, v1, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 403
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-virtual {v1, v3}, Lcom/android/contacts/ViewContactLogsActivity;->showDialog(I)V

    .line 404
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    iget-object v2, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v2}, Lcom/android/contacts/ViewContactLogsActivity;->access$100(Lcom/android/contacts/ViewContactLogsActivity;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/contacts/ViewContactLogsActivity;->access$200(Lcom/android/contacts/ViewContactLogsActivity;II)V

    .line 410
    .end local v0           #message:I
    :goto_30
    return-void

    .line 397
    .restart local v0       #message:I
    :cond_31
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v1}, Lcom/android/contacts/ViewContactLogsActivity;->access$100(Lcom/android/contacts/ViewContactLogsActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3c

    .line 398
    const/4 v0, 0x2

    goto :goto_19

    .line 399
    :cond_3c
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v1}, Lcom/android/contacts/ViewContactLogsActivity;->access$100(Lcom/android/contacts/ViewContactLogsActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 400
    const/4 v0, 0x3

    goto :goto_19

    .line 405
    .end local v0           #message:I
    :cond_47
    const/4 v1, -0x2

    if-ne p2, v1, :cond_56

    .line 406
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    iget-object v2, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v2}, Lcom/android/contacts/ViewContactLogsActivity;->access$000(Lcom/android/contacts/ViewContactLogsActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/contacts/ViewContactLogsActivity;->access$102(Lcom/android/contacts/ViewContactLogsActivity;I)I

    goto :goto_30

    .line 408
    :cond_56
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$1;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v1, p2}, Lcom/android/contacts/ViewContactLogsActivity;->access$102(Lcom/android/contacts/ViewContactLogsActivity;I)I

    goto :goto_30
.end method
