.class Lcom/android/mms/ui/MessageListItem$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f070070

    const v8, 0x1080027

    const/4 v7, 0x1

    .line 198
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getFreeMemSize()J

    move-result-wide v1

    .line 199
    .local v1, freeMem:J
    const-string v4, "MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Free Memsize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-wide/32 v4, 0x5dc000

    cmp-long v4, v4, v1

    if-ltz v4, :cond_50

    .line 203
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040287

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040074

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 237
    :goto_4f
    return-void

    .line 210
    :cond_50
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->isExpiredMMS(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f070028

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 216
    new-instance v4, Lcom/android/mms/ui/MessageListItem$1$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageListItem$1$1;-><init>(Lcom/android/mms/ui/MessageListItem$1;)V

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    const v4, 0x7f070071

    invoke-virtual {v0, v4, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    const v4, 0x7f0700a3

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4f

    .line 229
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_8d
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "uri"

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v4, "type"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4f
.end method
