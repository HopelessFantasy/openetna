.class Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TwitterFriendList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FollowAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/sns/profile/FriendEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mTextViewResourceId:I

.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;


# direct methods
.method public constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/FriendEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    .line 416
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 417
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 418
    iput p3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;->mTextViewResourceId:I

    .line 419
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 423
    if-nez p2, :cond_70

    .line 424
    iget-object v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;->mTextViewResourceId:I

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 429
    .local v7, tweetView:Landroid/view/View;
    :goto_d
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/FriendEntry;

    .line 430
    .local v1, authorInfo:Lcom/lge/sns/profile/FriendEntry;
    const v8, 0x7f080025

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 431
    .local v4, photo:Landroid/widget/ImageView;
    const v8, 0x7f080026

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 432
    .local v3, name:Landroid/widget/TextView;
    const v8, 0x7f080027

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 433
    .local v6, status:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_72

    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_72

    .line 435
    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    :goto_45
    instance-of v8, v1, Lcom/lge/sns/profile/Profile;

    if-eqz v8, :cond_97

    .line 443
    move-object v0, v1

    check-cast v0, Lcom/lge/sns/profile/Profile;

    move-object v5, v0

    .line 444
    .local v5, profile:Lcom/lge/sns/profile/Profile;
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    iget-object v8, v8, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 448
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_6f

    .line 449
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 455
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #profile:Lcom/lge/sns/profile/Profile;
    :cond_6f
    :goto_6f
    return-object v7

    .line 426
    .end local v1           #authorInfo:Lcom/lge/sns/profile/FriendEntry;
    .end local v3           #name:Landroid/widget/TextView;
    .end local v4           #photo:Landroid/widget/ImageView;
    .end local v6           #status:Landroid/widget/TextView;
    .end local v7           #tweetView:Landroid/view/View;
    :cond_70
    move-object v7, p2

    .restart local v7       #tweetView:Landroid/view/View;
    goto :goto_d

    .line 436
    .restart local v1       #authorInfo:Lcom/lge/sns/profile/FriendEntry;
    .restart local v3       #name:Landroid/widget/TextView;
    .restart local v4       #photo:Landroid/widget/ImageView;
    .restart local v6       #status:Landroid/widget/TextView;
    :cond_72
    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getUserName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8a

    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8a

    .line 438
    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_45

    .line 440
    :cond_8a
    iget-object v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    const v9, 0x104000e

    invoke-virtual {v8, v9}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_45

    .line 452
    :cond_97
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6f
.end method
