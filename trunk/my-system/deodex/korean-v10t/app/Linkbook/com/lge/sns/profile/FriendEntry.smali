.class public Lcom/lge/sns/profile/FriendEntry;
.super Lcom/lge/sns/profile/SnsAuthorInfo;
.source "FriendEntry.java"


# instance fields
.field private avatarLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"
    .parameter "avatarLink"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object p5, p0, Lcom/lge/sns/profile/FriendEntry;->avatarLink:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getAvatarLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/lge/sns/profile/FriendEntry;->avatarLink:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarLink(Ljava/lang/String;)V
    .registers 2
    .parameter "avatarLink"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/lge/sns/profile/FriendEntry;->avatarLink:Ljava/lang/String;

    .line 12
    return-void
.end method
