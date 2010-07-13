.class public Lcom/lge/sns/profile/SnsAuthorInfo;
.super Ljava/lang/Object;
.source "SnsAuthorInfo.java"


# instance fields
.field private displayName:Ljava/lang/String;

.field private snsId:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->snsId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->userId:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->userName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->displayName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 3
    .parameter "displayName"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->displayName:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->userName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 43
    iput-object p1, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->userName:Ljava/lang/String;

    .line 45
    :cond_8
    return-void
.end method

.method public setSnsId(Ljava/lang/String;)V
    .registers 2
    .parameter "snsId"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->snsId:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->userId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->userName:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->displayName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 32
    iput-object p1, p0, Lcom/lge/sns/profile/SnsAuthorInfo;->displayName:Ljava/lang/String;

    .line 34
    :cond_8
    return-void
.end method
