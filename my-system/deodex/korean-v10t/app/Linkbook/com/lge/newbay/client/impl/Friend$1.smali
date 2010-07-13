.class Lcom/lge/newbay/client/impl/Friend$1;
.super Ljava/lang/Thread;
.source "Friend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/newbay/client/impl/Friend;->getFriendsProfileAsync(Ljava/util/List;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/newbay/client/impl/Friend;

.field final synthetic val$cb:Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;

.field final synthetic val$entries:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lge/newbay/client/impl/Friend;Ljava/util/List;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/lge/newbay/client/impl/Friend$1;->this$0:Lcom/lge/newbay/client/impl/Friend;

    iput-object p2, p0, Lcom/lge/newbay/client/impl/Friend$1;->val$entries:Ljava/util/List;

    iput-object p3, p0, Lcom/lge/newbay/client/impl/Friend$1;->val$cb:Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 565
    :try_start_0
    invoke-static {}, Lcom/lge/newbay/client/NewbayFactory;->getInstance()Lcom/lge/newbay/client/NewbayFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/newbay/client/NewbayFactory;->getProfile()Lcom/lge/newbay/client/IProfile;

    move-result-object v4

    .line 566
    .local v4, profile:Lcom/lge/newbay/client/IProfile;
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Friend$1;->val$entries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 567
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_29

    .line 568
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Friend$1;->val$entries:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/feed/atom/Entry;
    :try_end_19
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_19} :catch_3c

    .line 570
    .local v1, entry:Lcom/lge/feed/atom/Entry;
    :try_start_19
    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;

    move-result-object v5

    .line 571
    .local v5, up:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Friend$1;->val$cb:Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;

    invoke-interface {v6, v5}, Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;->notifyFriendsProfile(Lcom/lge/newbay/client/IProfile$SnsUserProfile;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_2f
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_19 .. :try_end_26} :catch_3c

    move-result v6

    if-nez v6, :cond_39

    .line 580
    .end local v1           #entry:Lcom/lge/feed/atom/Entry;
    .end local v5           #up:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :cond_29
    :try_start_29
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Friend$1;->val$cb:Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;

    invoke-interface {v6}, Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;->notifyFriendsProfileFinished()V

    .line 584
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #profile:Lcom/lge/newbay/client/IProfile;
    :goto_2e
    return-void

    .line 574
    .restart local v1       #entry:Lcom/lge/feed/atom/Entry;
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v4       #profile:Lcom/lge/newbay/client/IProfile;
    :catch_2f
    move-exception v6

    move-object v0, v6

    .line 575
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/lge/newbay/client/impl/Friend$1;->val$cb:Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;

    invoke-interface {v6, v1, v0}, Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;->notifyFriendsProfileError(Lcom/lge/feed/atom/Entry;Ljava/lang/Exception;)Z
    :try_end_36
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_29 .. :try_end_36} :catch_3c

    move-result v6

    if-eqz v6, :cond_29

    .line 567
    .end local v0           #e:Ljava/lang/Exception;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 581
    .end local v1           #entry:Lcom/lge/feed/atom/Entry;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_3c
    move-exception v6

    goto :goto_2e
.end method
