.class final Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;
.super Lcom/lge/sns/profile/ui/FriendEntryAdapter;
.source "FriendsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lge/sns/profile/ui/FriendEntryAdapter",
        "<",
        "Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 800
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/FriendEntryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 801
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->mContext:Landroid/content/Context;

    .line 802
    return-void
.end method

.method private setCompareFriendsCountView(Landroid/view/View;Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;)V
    .registers 15
    .parameter "view"
    .parameter "entry"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v7, 0x8

    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;

    .line 854
    .local v6, views:Lcom/lge/sns/profile/ui/FriendsList$ViewCache;
    iget-object v2, v6, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->photoView:Landroid/widget/ImageView;

    .line 855
    .local v2, image:Landroid/widget/ImageView;
    if-eqz v2, :cond_11

    .line 856
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 857
    :cond_11
    iget-object v1, v6, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->dataView:Landroid/widget/TextView;

    .line 858
    .local v1, data:Landroid/widget/TextView;
    if-eqz v1, :cond_18

    .line 859
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    :cond_18
    iget-object v4, v6, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->progressView:Landroid/widget/ProgressBar;

    .line 861
    .local v4, progress:Landroid/widget/ProgressBar;
    if-eqz v4, :cond_1f

    .line 862
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 863
    :cond_1f
    iget-object v3, v6, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->lineView:Landroid/widget/TextView;

    .line 864
    .local v3, line:Landroid/widget/TextView;
    if-eqz v3, :cond_26

    .line 865
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    :cond_26
    iget-object v0, v6, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->count:Landroid/widget/TextView;

    .line 867
    .local v0, count:Landroid/widget/TextView;
    if-eqz v0, :cond_4b

    .line 868
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    iget v7, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->compareCount:I

    if-ne v7, v9, :cond_4c

    .line 873
    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05003c

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->compareCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 877
    .local v5, text:Ljava/lang/String;
    :goto_48
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    .end local v5           #text:Ljava/lang/String;
    :cond_4b
    return-void

    .line 875
    :cond_4c
    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05003d

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->compareCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #text:Ljava/lang/String;
    goto :goto_48
.end method

.method private setDefaultFriendsView(Landroid/view/View;Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;)V
    .registers 16
    .parameter "view"
    .parameter "entry"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 882
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;

    .line 883
    .local v7, views:Lcom/lge/sns/profile/ui/FriendsList$ViewCache;
    iget-object v1, v7, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->count:Landroid/widget/TextView;

    .line 884
    .local v1, count:Landroid/widget/TextView;
    if-eqz v1, :cond_10

    .line 885
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    :cond_10
    iget-object v6, v7, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->progressView:Landroid/widget/ProgressBar;

    .line 888
    .local v6, progressView:Landroid/widget/ProgressBar;
    iget-object v5, v7, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->photoView:Landroid/widget/ImageView;

    .line 890
    .local v5, photoView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/lge/sns/profile/ui/FriendsList;->access$1400()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_86

    .line 896
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/lge/sns/profile/ui/FriendsList;

    .line 897
    .local v3, fl:Lcom/lge/sns/profile/ui/FriendsList;
    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$1000(Lcom/lge/sns/profile/ui/FriendsList;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v8

    iget-object v9, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v9}, Lcom/lge/sns/profile/ProfileListItem;->getSnsId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v10}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 898
    .local v0, avatardata:Landroid/graphics/Bitmap;
    if-nez v0, :cond_82

    .line 899
    const v8, 0x7f020091

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 903
    :goto_3b
    if-eqz v6, :cond_40

    .line 904
    invoke-virtual {v6, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 907
    :cond_40
    if-eqz v5, :cond_45

    .line 909
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 922
    .end local v0           #avatardata:Landroid/graphics/Bitmap;
    .end local v3           #fl:Lcom/lge/sns/profile/ui/FriendsList;
    :cond_45
    :goto_45
    iget-object v4, v7, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->lineView:Landroid/widget/TextView;

    .line 924
    .local v4, lineView:Landroid/widget/TextView;
    if-eqz v4, :cond_69

    .line 925
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 926
    iget-object v8, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v8}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_92

    iget-object v8, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v8}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_92

    .line 928
    iget-object v8, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v8}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    :cond_69
    :goto_69
    iget-object v2, v7, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->dataView:Landroid/widget/TextView;

    .line 939
    .local v2, dataView:Landroid/widget/TextView;
    if-eqz v2, :cond_81

    .line 940
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 941
    iget-object v8, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v8}, Lcom/lge/sns/profile/ProfileListItem;->getStatus()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_81

    .line 942
    iget-object v8, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v8}, Lcom/lge/sns/profile/ProfileListItem;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :cond_81
    return-void

    .line 901
    .end local v2           #dataView:Landroid/widget/TextView;
    .end local v4           #lineView:Landroid/widget/TextView;
    .restart local v0       #avatardata:Landroid/graphics/Bitmap;
    .restart local v3       #fl:Lcom/lge/sns/profile/ui/FriendsList;
    :cond_82
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3b

    .line 914
    .end local v0           #avatardata:Landroid/graphics/Bitmap;
    .end local v3           #fl:Lcom/lge/sns/profile/ui/FriendsList;
    :cond_86
    if-eqz v6, :cond_8b

    .line 915
    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 917
    :cond_8b
    if-eqz v5, :cond_45

    .line 919
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_45

    .line 929
    .restart local v4       #lineView:Landroid/widget/TextView;
    :cond_92
    iget-object v8, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v8}, Lcom/lge/sns/profile/ProfileListItem;->getUserName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b0

    iget-object v8, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v8}, Lcom/lge/sns/profile/ProfileListItem;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b0

    .line 931
    iget-object v8, p2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v8}, Lcom/lge/sns/profile/ProfileListItem;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69

    .line 933
    :cond_b0
    iget-object v8, p0, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 797
    check-cast p3, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/FriendsList$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/FriendsList$ViewEntry;)V
    .registers 6
    .parameter "view"
    .parameter "position"
    .parameter "entry"

    .prologue
    .line 844
    iget v0, p3, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 845
    invoke-direct {p0, p1, p3}, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->setDefaultFriendsView(Landroid/view/View;Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;)V

    .line 849
    :cond_8
    :goto_8
    return-void

    .line 846
    :cond_9
    iget v0, p3, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 847
    invoke-direct {p0, p1, p3}, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->setCompareFriendsCountView(Landroid/view/View;Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;)V

    goto :goto_8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 806
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->getItem(I)Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .line 811
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    if-eqz p2, :cond_18

    .line 812
    move-object v1, p2

    .line 813
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;

    .line 828
    .local v2, views:Lcom/lge/sns/profile/ui/FriendsList$ViewCache;
    :goto_f
    iput-object v0, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .line 829
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 832
    invoke-virtual {p0, v1, p1, v0}, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/FriendsList$ViewEntry;)V

    .line 833
    return-object v1

    .line 815
    .end local v1           #v:Landroid/view/View;
    .end local v2           #views:Lcom/lge/sns/profile/ui/FriendsList$ViewCache;
    :cond_18
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 818
    .restart local v1       #v:Landroid/view/View;
    new-instance v2, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;

    invoke-direct {v2}, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;-><init>()V

    .line 820
    .restart local v2       #views:Lcom/lge/sns/profile/ui/FriendsList$ViewCache;
    const v3, 0x7f080025

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->photoView:Landroid/widget/ImageView;

    .line 821
    const v3, 0x7f080026

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->lineView:Landroid/widget/TextView;

    .line 822
    const v3, 0x7f080027

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->dataView:Landroid/widget/TextView;

    .line 823
    const v3, 0x7f080024

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->progressView:Landroid/widget/ProgressBar;

    .line 824
    const v3, 0x7f080023

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->count:Landroid/widget/TextView;

    goto :goto_f
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 838
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
