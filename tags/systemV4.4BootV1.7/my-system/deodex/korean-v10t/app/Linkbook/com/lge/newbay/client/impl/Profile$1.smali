.class Lcom/lge/newbay/client/impl/Profile$1;
.super Ljava/lang/Thread;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/newbay/client/impl/Profile;->getUserCommentAsync(Ljava/util/List;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/newbay/client/impl/Profile;

.field final synthetic val$cb:Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;

.field final synthetic val$entries:Ljava/util/List;

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Lcom/lge/newbay/client/impl/Profile;ILjava/util/List;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/lge/newbay/client/impl/Profile$1;->this$0:Lcom/lge/newbay/client/impl/Profile;

    iput p2, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$length:I

    iput-object p3, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$entries:Ljava/util/List;

    iput-object p4, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$cb:Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 597
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v4, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$length:I

    if-ge v3, v4, :cond_23

    .line 598
    iget-object v4, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$entries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/feed/atom/Entry;

    .line 600
    .local v2, entry:Lcom/lge/feed/atom/Entry;
    :try_start_d
    iget-object v4, p0, Lcom/lge/newbay/client/impl/Profile$1;->this$0:Lcom/lge/newbay/client/impl/Profile;

    invoke-virtual {v2}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/newbay/client/impl/Profile;->getUserProfileComment(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;

    move-result-object v0

    .line 601
    .local v0, comment:Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    iget-object v4, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$cb:Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;

    if-eqz v4, :cond_3b

    .line 602
    iget-object v4, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$cb:Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;

    invoke-interface {v4, v0}, Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;->notifyProfileComment(Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_2d

    move-result v4

    if-nez v4, :cond_3b

    .line 614
    .end local v0           #comment:Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    .end local v2           #entry:Lcom/lge/feed/atom/Entry;
    :cond_23
    iget-object v4, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$cb:Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;

    if-eqz v4, :cond_2c

    .line 615
    iget-object v4, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$cb:Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;

    invoke-interface {v4}, Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;->notifyProfileCommentFinished()V

    .line 617
    :cond_2c
    return-void

    .line 606
    .restart local v2       #entry:Lcom/lge/feed/atom/Entry;
    :catch_2d
    move-exception v4

    move-object v1, v4

    .line 607
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$cb:Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;

    if-eqz v4, :cond_3b

    .line 608
    iget-object v4, p0, Lcom/lge/newbay/client/impl/Profile$1;->val$cb:Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;

    invoke-interface {v4, v2, v1}, Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;->notifyProfileCommentError(Lcom/lge/feed/atom/Entry;Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 597
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
