.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$1;
.super Ljava/lang/Object;
.source "TwitterTweetUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$1;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 145
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$1;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->dismissDialog(I)V

    .line 146
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$1;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const v3, 0x7f0800cd

    invoke-virtual {v2, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 147
    .local v1, tweetEditView:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$1;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    iget-object v3, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const v4, 0x7f0500bf

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$1;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    iget-object v3, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const v4, 0x7f0500c0

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, notifyMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$1;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 150
    return-void
.end method
