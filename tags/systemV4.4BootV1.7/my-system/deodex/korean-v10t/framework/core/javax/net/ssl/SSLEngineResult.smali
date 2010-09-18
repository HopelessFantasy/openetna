.class public Ljavax/net/ssl/SSLEngineResult;
.super Ljava/lang/Object;
.source "SSLEngineResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/SSLEngineResult$Status;,
        Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    }
.end annotation


# instance fields
.field private final bytesConsumed:I

.field private final bytesProduced:I

.field private final handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private final status:Ljavax/net/ssl/SSLEngineResult$Status;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    .registers 7
    .parameter "status"
    .parameter "handshakeStatus"
    .parameter "bytesConsumed"
    .parameter "bytesProduced"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_d

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "status is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_d
    if-nez p2, :cond_17

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handshakeStatus is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_17
    if-gez p3, :cond_21

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytesConsumed is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_21
    if-gez p4, :cond_2b

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytesProduced is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2b
    iput-object p1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 74
    iput-object p2, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 75
    iput p3, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    .line 76
    iput p4, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    .line 77
    return-void
.end method


# virtual methods
.method public final bytesConsumed()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    return v0
.end method

.method public final bytesProduced()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    return v0
.end method

.method public final getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method public final getStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSLEngineReport: Status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "  HandshakeStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "\n                 bytesConsumed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, " bytesProduced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
