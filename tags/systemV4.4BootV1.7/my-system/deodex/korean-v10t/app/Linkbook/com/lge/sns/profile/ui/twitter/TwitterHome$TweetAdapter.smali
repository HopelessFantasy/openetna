.class Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TwitterHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TweetAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/sns/profile/ProfileStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mTextViewResourceId:I


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
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 227
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 228
    iput p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;->mTextViewResourceId:I

    .line 229
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 233
    if-nez p2, :cond_4f

    .line 234
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;->mTextViewResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 239
    .local v4, tweetView:Landroid/view/View;
    :goto_b
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/sns/profile/ProfileStatus;

    .line 240
    .local v3, tweet:Lcom/lge/sns/profile/ProfileStatus;
    const v5, 0x7f08001c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    .local v1, name:Landroid/widget/TextView;
    const v5, 0x7f08001d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    .local v0, message:Landroid/widget/TextView;
    const v5, 0x7f08001b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 243
    .local v2, published:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileStatus;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileStatus;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileStatus;->getPublished()Ljava/util/Date;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v6, v7}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-object v4

    .line 236
    .end local v0           #message:Landroid/widget/TextView;
    .end local v1           #name:Landroid/widget/TextView;
    .end local v2           #published:Landroid/widget/TextView;
    .end local v3           #tweet:Lcom/lge/sns/profile/ProfileStatus;
    .end local v4           #tweetView:Landroid/view/View;
    :cond_4f
    move-object v4, p2

    .restart local v4       #tweetView:Landroid/view/View;
    goto :goto_b
.end method
