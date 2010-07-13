.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TwitterTweetAtList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeedListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/sns/feed/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field private mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
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
            "Lcom/lge/sns/feed/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 183
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->mContext:Landroid/content/Context;

    .line 184
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 185
    invoke-static {}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$100()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 186
    iput p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->mTextViewResourceId:I

    .line 187
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 197
    if-nez p2, :cond_8f

    .line 198
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->mTextViewResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 200
    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;-><init>()V

    .line 201
    .local v3, holder:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;
    const v5, 0x7f08001e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->avatarView:Landroid/widget/ImageView;

    .line 202
    const v5, 0x7f08001c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->userNameView:Landroid/widget/TextView;

    .line 203
    const v5, 0x7f08001d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->MessageView:Landroid/widget/TextView;

    .line 204
    const v5, 0x7f08001b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->publishedView:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    :goto_3f
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/feed/Feed;

    .line 213
    .local v2, feed:Lcom/lge/sns/feed/Feed;
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;

    const-string v6, "TW"

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_96

    .line 215
    iget-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    :goto_58
    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_9f

    .line 223
    iget-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->userNameView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :goto_63
    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, summary:Ljava/lang/String;
    if-eqz v4, :cond_a9

    .line 231
    iget-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->MessageView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_6e
    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 238
    iget-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->publishedView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6, v7, v8}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_8e
    return-object p2

    .line 207
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #feed:Lcom/lge/sns/feed/Feed;
    .end local v3           #holder:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;
    .end local v4           #summary:Ljava/lang/String;
    :cond_8f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;

    .restart local v3       #holder:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;
    goto :goto_3f

    .line 217
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #feed:Lcom/lge/sns/feed/Feed;
    :cond_96
    iget-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->avatarView:Landroid/widget/ImageView;

    const v6, 0x7f020091

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_58

    .line 225
    .restart local v1       #displayName:Ljava/lang/String;
    :cond_9f
    iget-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->userNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_63

    .line 233
    .restart local v4       #summary:Ljava/lang/String;
    :cond_a9
    iget-object v5, v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter$ViewHolder;->MessageView:Landroid/widget/TextView;

    const v6, 0x7f05003a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6e
.end method
