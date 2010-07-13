.class Lcom/lge/sns/profile/ui/FriendView$ViewCache;
.super Ljava/lang/Object;
.source "FriendView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCache"
.end annotation


# instance fields
.field public dataView:Landroid/widget/TextView;

.field public dateView:Landroid/widget/TextView;

.field entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;

.field public nameView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
