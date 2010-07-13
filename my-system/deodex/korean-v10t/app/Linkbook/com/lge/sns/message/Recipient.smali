.class public Lcom/lge/sns/message/Recipient;
.super Ljava/lang/Object;
.source "Recipient.java"


# instance fields
.field public displayName:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lge/sns/message/Recipient;->userId:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/lge/sns/message/Recipient;->userName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/lge/sns/message/Recipient;->displayName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/sns/message/Recipient;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/sns/message/Recipient;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/sns/message/Recipient;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .parameter "displayName"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/sns/message/Recipient;->displayName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/sns/message/Recipient;->userId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .parameter "userName"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/sns/message/Recipient;->userName:Ljava/lang/String;

    .line 77
    return-void
.end method
