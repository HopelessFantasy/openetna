.class Landroid/security/Keystore$FileKeystore;
.super Landroid/security/Keystore;
.source "Keystore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/Keystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileKeystore"
.end annotation


# static fields
.field private static final CA_CERTIFICATE:Ljava/lang/String; = "CaCertificate"

.field private static final COMMAND_DELIMITER:Ljava/lang/String; = " "

.field private static final SERVICE_NAME:Ljava/lang/String; = "keystore"

.field private static final USER_CERTIFICATE:Ljava/lang/String; = "UserCertificate"

.field private static final USER_KEY:Ljava/lang/String; = "UserPrivateKey"

.field private static final mServiceCommand:Landroid/security/ServiceCommand;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Landroid/security/ServiceCommand;

    const-string v1, "keystore"

    invoke-direct {v0, v1}, Landroid/security/ServiceCommand;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/security/Keystore;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/Keystore$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/security/Keystore$FileKeystore;-><init>()V

    return-void
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 82
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 84
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_23

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    :goto_22
    return v1

    :cond_23
    const/4 v1, -0x1

    goto :goto_22
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "namespace"
    .parameter "keyname"

    .prologue
    const/4 v5, 0x0

    .line 114
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 116
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_32

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    if-eqz v1, :cond_27

    move-object v1, v5

    :goto_26
    return-object v1

    :cond_27
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/security/Reply;->data:[B

    const/4 v3, 0x0

    iget v4, v0, Landroid/security/Reply;->len:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    goto :goto_26

    :cond_32
    move-object v1, v5

    goto :goto_26
.end method

.method public getState()I
    .registers 5

    .prologue
    .line 75
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 77
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_d

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    :goto_c
    return v1

    :cond_d
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public listKeys(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "namespace"

    .prologue
    .line 96
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 98
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_11

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    if-nez v1, :cond_11

    iget v1, v0, Landroid/security/Reply;->len:I

    if-nez v1, :cond_16

    .line 100
    :cond_11
    invoke-static {}, Landroid/security/Keystore;->access$100()[Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_15
    return-object v1

    :cond_16
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/security/Reply;->data:[B

    const/4 v3, 0x0

    iget v4, v0, Landroid/security/Reply;->len:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_15
.end method

.method public lock()I
    .registers 5

    .prologue
    .line 62
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 63
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_d

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    :goto_c
    return v1

    :cond_d
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "namespace"
    .parameter "keyname"
    .parameter "value"

    .prologue
    const-string v5, " "

    .line 107
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 109
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_2f

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    :goto_2e
    return v1

    :cond_2f
    const/4 v1, -0x1

    goto :goto_2e
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "namespace"
    .parameter "keyname"

    .prologue
    .line 122
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 124
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_23

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    :goto_22
    return v1

    :cond_23
    const/4 v1, -0x1

    goto :goto_22
.end method

.method public reset()I
    .registers 5

    .prologue
    .line 129
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 130
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    :goto_d
    return v1

    :cond_e
    const/4 v1, -0x1

    goto :goto_d
.end method

.method public setPassword(Ljava/lang/String;)I
    .registers 5
    .parameter "firstPassword"

    .prologue
    .line 89
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 91
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_c

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    :goto_b
    return v1

    :cond_c
    const/4 v1, -0x1

    goto :goto_b
.end method

.method public unlock(Ljava/lang/String;)I
    .registers 5
    .parameter "password"

    .prologue
    .line 68
    sget-object v1, Landroid/security/Keystore$FileKeystore;->mServiceCommand:Landroid/security/ServiceCommand;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/security/ServiceCommand;->execute(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 70
    .local v0, result:Landroid/security/Reply;
    if-eqz v0, :cond_c

    iget v1, v0, Landroid/security/Reply;->returnCode:I

    :goto_b
    return v1

    :cond_c
    const/4 v1, -0x1

    goto :goto_b
.end method
