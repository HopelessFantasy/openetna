.class public Ljava/net/URISyntaxException;
.super Ljava/lang/Exception;
.source "URISyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1daba13138e5d7fbL


# instance fields
.field private index:I

.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "input"
    .parameter "reason"

    .prologue
    .line 83
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 85
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 86
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 89
    :cond_d
    iput-object p1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URISyntaxException;->index:I

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "input"
    .parameter "reason"
    .parameter "index"

    .prologue
    .line 55
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 58
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 61
    :cond_d
    const/4 v0, -0x1

    if-ge p3, v0, :cond_16

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 65
    :cond_16
    iput-object p1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    .line 66
    iput p3, p0, Ljava/net/URISyntaxException;->index:I

    .line 67
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Ljava/net/URISyntaxException;->index:I

    return v0
.end method

.method public getInput()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, reason:Ljava/lang/String;
    iget v1, p0, Ljava/net/URISyntaxException;->index:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 138
    const-string v1, "K0326"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    iget v3, p0, Ljava/net/URISyntaxException;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    :goto_23
    return-object v1

    :cond_24
    const-string v1, "K0327"

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v3

    iget-object v3, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
