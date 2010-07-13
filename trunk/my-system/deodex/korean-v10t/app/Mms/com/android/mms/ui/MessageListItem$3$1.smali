.class Lcom/android/mms/ui/MessageListItem$3$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$3;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$3;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$3$1;->this$1:Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$3$1;->this$1:Lcom/android/mms/ui/MessageListItem$3;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$3$1;->this$1:Lcom/android/mms/ui/MessageListItem$3;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$3$1;->this$1:Lcom/android/mms/ui/MessageListItem$3;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    return-void
.end method
