.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TwitterTweetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field MessageView:Landroid/widget/TextView;

.field avatarView:Landroid/widget/ImageView;

.field publishedView:Landroid/widget/TextView;

.field userNameView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
