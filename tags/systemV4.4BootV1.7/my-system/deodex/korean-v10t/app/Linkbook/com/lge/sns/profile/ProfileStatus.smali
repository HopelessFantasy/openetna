.class public Lcom/lge/sns/profile/ProfileStatus;
.super Lcom/lge/sns/profile/SnsAuthorInfo;
.source "ProfileStatus.java"


# instance fields
.field private published:Ljava/util/Date;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"
    .parameter "status"
    .parameter "published"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-object p5, p0, Lcom/lge/sns/profile/ProfileStatus;->status:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/lge/sns/profile/ProfileStatus;->published:Ljava/util/Date;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 51
    instance-of v2, p1, Lcom/lge/sns/profile/ProfileStatus;

    if-eqz v2, :cond_20

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/profile/ProfileStatus;

    move-object v1, v0

    .line 53
    .local v1, f:Lcom/lge/sns/profile/ProfileStatus;
    iget-object v2, v1, Lcom/lge/sns/profile/ProfileStatus;->status:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ProfileStatus;->status:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/lge/sns/profile/ProfileStatus;->published:Ljava/util/Date;

    iget-object v3, p0, Lcom/lge/sns/profile/ProfileStatus;->published:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    .line 55
    .end local v1           #f:Lcom/lge/sns/profile/ProfileStatus;
    :goto_1d
    return v2

    .line 53
    .restart local v1       #f:Lcom/lge/sns/profile/ProfileStatus;
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d

    .line 55
    .end local v1           #f:Lcom/lge/sns/profile/ProfileStatus;
    :cond_20
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1d
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/sns/profile/ProfileStatus;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/sns/profile/ProfileStatus;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/lge/sns/profile/ProfileStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/sns/profile/ProfileStatus;->published:Ljava/util/Date;

    .line 32
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lge/sns/profile/ProfileStatus;->status:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ProfileStatus;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "published="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ProfileStatus;->published:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
