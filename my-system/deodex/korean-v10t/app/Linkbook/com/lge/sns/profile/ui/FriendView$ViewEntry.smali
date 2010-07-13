.class final Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
.super Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;
.source "FriendView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public auxIntent:Landroid/content/Intent;

.field public dispName:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public profileId:J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;-><init>()V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->auxIntent:Landroid/content/Intent;

    return-void
.end method
