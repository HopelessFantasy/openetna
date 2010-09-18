.class Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;
.super Ljava/lang/Object;
.source "TwitterProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 306
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    const v5, 0x7f0800de

    invoke-virtual {v3, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$502(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 307
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v3, v3, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetsFeed:Ljava/util/List;

    if-nez v3, :cond_53

    const/4 v3, 0x0

    move v1, v3

    .line 308
    .local v1, l:I
    :goto_18
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$500(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 309
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$500(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 311
    :cond_2d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2e
    if-ge v0, v1, :cond_5d

    .line 312
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v4, v4, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetsFeed:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f03004b

    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v6}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$500(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$600(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Ljava/lang/Object;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 313
    .local v2, tweetView:Landroid/view/View;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$500(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 307
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #tweetView:Landroid/view/View;
    :cond_53
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v3, v3, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->tweetsFeed:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    goto :goto_18

    .line 315
    .restart local v0       #i:I
    .restart local v1       #l:I
    :cond_5d
    return-void
.end method
