.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;
.super Ljava/lang/Object;
.source "TwitterTweetUpdate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 80
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const v5, 0x7f0800cd

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 81
    .local v2, tweetEditView:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, tweetText:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 83
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 84
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const v5, 0x7f0800cc

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, tweetAt:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, to:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 87
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->access$102(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .end local v0           #to:Ljava/lang/String;
    .end local v1           #tweetAt:Landroid/widget/TextView;
    :goto_56
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-static {v5}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->access$100(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;Ljava/lang/String;Z)V

    .line 97
    :cond_62
    return-void

    .line 92
    :cond_63
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-static {v4, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->access$102(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_56
.end method
