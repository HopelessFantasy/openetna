.class Lcom/lge/sns/profile/ui/FriendsList$ViewCache;
.super Ljava/lang/Object;
.source "FriendsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCache"
.end annotation


# instance fields
.field public count:Landroid/widget/TextView;

.field public dataView:Landroid/widget/TextView;

.field entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

.field public lineView:Landroid/widget/TextView;

.field public photoView:Landroid/widget/ImageView;

.field public progressView:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
