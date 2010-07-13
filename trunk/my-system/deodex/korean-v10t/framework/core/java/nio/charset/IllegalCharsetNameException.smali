.class public Ljava/nio/charset/IllegalCharsetNameException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalCharsetNameException.java"


# static fields
.field private static final serialVersionUID:J = 0x143a2b975aba792dL


# instance fields
.field private charsetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "charset"

    .prologue
    .line 49
    const-string v0, "niochar.0F"

    invoke-static {v0, p1}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    return-object v0
.end method
