.class final Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
.super Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;
.source "FriendsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public compareCount:I

.field public kind:I

.field public profile:Lcom/lge/sns/profile/ProfileListItem;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;-><init>()V

    return-void
.end method
