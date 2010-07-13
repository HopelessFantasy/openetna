.class public Ljava/nio/charset/MalformedInputException;
.super Ljava/nio/charset/CharacterCodingException;
.source "MalformedInputException.java"


# static fields
.field private static final serialVersionUID:J = -0x2fb927a9987467b2L


# instance fields
.field private inputLength:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "length"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    .line 47
    iput p1, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    .line 48
    return-void
.end method


# virtual methods
.method public getInputLength()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    const-string v0, "niochar.05"

    iget v1, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    invoke-static {v0, v1}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
