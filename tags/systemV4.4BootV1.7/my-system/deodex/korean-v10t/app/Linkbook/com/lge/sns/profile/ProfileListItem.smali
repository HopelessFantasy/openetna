.class public Lcom/lge/sns/profile/ProfileListItem;
.super Lcom/lge/sns/profile/FriendEntry;
.source "ProfileListItem.java"


# instance fields
.field private id:J

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/sns/profile/FriendEntry;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "id"
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"
    .parameter "avatarLink"
    .parameter "status"

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/lge/sns/profile/FriendEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-wide p1, p0, Lcom/lge/sns/profile/ProfileListItem;->id:J

    .line 42
    iput-object p8, p0, Lcom/lge/sns/profile/ProfileListItem;->status:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getId()J
    .registers 3

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/lge/sns/profile/ProfileListItem;->id:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/sns/profile/ProfileListItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 35
    sget-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/lge/sns/profile/ProfileListItem;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/lge/sns/profile/ProfileListItem;->id:J

    .line 21
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/sns/profile/ProfileListItem;->status:Ljava/lang/String;

    .line 32
    return-void
.end method
