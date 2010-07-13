.class public Lcom/lge/sns/account/Credential;
.super Ljava/lang/Object;
.source "Credential.java"


# instance fields
.field autoUpdated:Z

.field login:Z

.field remeber:Z

.field uid:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field userPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string v0, "user_id"

    iput-object v0, p0, Lcom/lge/sns/account/Credential;->userId:Ljava/lang/String;

    .line 136
    const-string v0, "user_password"

    iput-object v0, p0, Lcom/lge/sns/account/Credential;->userPassword:Ljava/lang/String;

    .line 137
    const-string v0, "uid"

    iput-object v0, p0, Lcom/lge/sns/account/Credential;->uid:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .registers 7
    .parameter "userId"
    .parameter "userPassword"
    .parameter "remeber"
    .parameter "autoUpdated"
    .parameter "uid"
    .parameter "login"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/lge/sns/account/Credential;->userId:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/lge/sns/account/Credential;->userPassword:Ljava/lang/String;

    .line 128
    iput-boolean p3, p0, Lcom/lge/sns/account/Credential;->remeber:Z

    .line 129
    iput-boolean p4, p0, Lcom/lge/sns/account/Credential;->autoUpdated:Z

    .line 130
    iput-object p5, p0, Lcom/lge/sns/account/Credential;->uid:Ljava/lang/String;

    .line 131
    iput-boolean p6, p0, Lcom/lge/sns/account/Credential;->login:Z

    .line 132
    return-void
.end method


# virtual methods
.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/sns/account/Credential;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/sns/account/Credential;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/sns/account/Credential;->userPassword:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoUpdated()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/lge/sns/account/Credential;->autoUpdated:Z

    return v0
.end method

.method public isLogin()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lge/sns/account/Credential;->login:Z

    return v0
.end method

.method public isRemeber()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/lge/sns/account/Credential;->remeber:Z

    return v0
.end method

.method public setAutoUpdated(Z)V
    .registers 2
    .parameter "autoUpdated"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/lge/sns/account/Credential;->autoUpdated:Z

    .line 105
    return-void
.end method

.method public setLogin(Z)V
    .registers 2
    .parameter "login"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lge/sns/account/Credential;->login:Z

    .line 41
    return-void
.end method

.method public setRemeber(Z)V
    .registers 2
    .parameter "remeber"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/lge/sns/account/Credential;->remeber:Z

    .line 89
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lge/sns/account/Credential;->uid:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/sns/account/Credential;->userId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "password"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/sns/account/Credential;->userPassword:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/account/Credential;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "userPassword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/account/Credential;->userPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "remeber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/sns/account/Credential;->remeber:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "autoUpdated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/sns/account/Credential;->autoUpdated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
