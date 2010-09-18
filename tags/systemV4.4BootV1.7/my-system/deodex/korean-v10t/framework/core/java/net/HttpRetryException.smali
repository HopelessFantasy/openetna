.class public Ljava/net/HttpRetryException;
.super Ljava/io/IOException;
.source "HttpRetryException.java"


# static fields
.field private static final serialVersionUID:J = -0x7f7b4e9993d01e55L


# instance fields
.field private location:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "detail"
    .parameter "code"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    .line 47
    iput p2, p0, Ljava/net/HttpRetryException;->responseCode:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter "detail"
    .parameter "code"
    .parameter "location"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    .line 65
    iput p2, p0, Ljava/net/HttpRetryException;->responseCode:I

    .line 66
    iput-object p3, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/net/HttpRetryException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public responseCode()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Ljava/net/HttpRetryException;->responseCode:I

    return v0
.end method
