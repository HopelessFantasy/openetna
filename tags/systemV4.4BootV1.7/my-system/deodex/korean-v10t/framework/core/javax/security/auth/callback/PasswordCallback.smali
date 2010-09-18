.class public Ljavax/security/auth/callback/PasswordCallback;
.super Ljava/lang/Object;
.source "PasswordCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f7780e27139c5e6L


# instance fields
.field echoOn:Z

.field private inputPassword:[C

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter "prompt"
    .parameter "echoOn"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0, p1}, Ljavax/security/auth/callback/PasswordCallback;->setPrompt(Ljava/lang/String;)V

    .line 59
    iput-boolean p2, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    .line 60
    return-void
.end method

.method private setPrompt(Ljava/lang/String;)V
    .registers 4
    .parameter "prompt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 43
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_14
    iput-object p1, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-eqz v0, :cond_a

    .line 123
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 125
    :cond_a
    return-void
.end method

.method public getPassword()[C
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-eqz v1, :cond_12

    .line 111
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 112
    .local v0, tmp:[C
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 115
    .end local v0           #tmp:[C
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public isEchoOn()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    return v0
.end method

.method public setPassword([C)V
    .registers 5
    .parameter "password"

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p1, :cond_6

    .line 93
    iput-object p1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    .line 98
    :goto_5
    return-void

    .line 95
    :cond_6
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    .line 96
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method
