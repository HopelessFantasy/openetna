.class final Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
.super Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;
.source "ImportFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ImportFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public isAdded:Z

.field public isSelect:Z

.field public mProfile:Lcom/lge/sns/profile/ProfileListItem;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 383
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;-><init>()V

    .line 385
    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isSelect:Z

    .line 386
    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isAdded:Z

    return-void
.end method
