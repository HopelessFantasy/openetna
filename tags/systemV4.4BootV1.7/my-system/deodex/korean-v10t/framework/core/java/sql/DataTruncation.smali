.class public Ljava/sql/DataTruncation;
.super Ljava/sql/SQLWarning;
.source "DataTruncation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final THE_ERROR_CODE:I = 0x0

.field private static final THE_REASON:Ljava/lang/String; = "Data truncation"

.field private static final THE_SQLSTATE:Ljava/lang/String; = "01004"

.field private static final serialVersionUID:J = 0x59b5cdae7f4e5851L


# instance fields
.field private dataSize:I

.field private index:I

.field private parameter:Z

.field private read:Z

.field private transferSize:I


# direct methods
.method public constructor <init>(IZZII)V
    .registers 9
    .parameter "index"
    .parameter "parameter"
    .parameter "read"
    .parameter "dataSize"
    .parameter "transferSize"

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "Data truncation"

    const-string v1, "01004"

    invoke-direct {p0, v0, v1, v2}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iput v2, p0, Ljava/sql/DataTruncation;->index:I

    .line 36
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->parameter:Z

    .line 38
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->read:Z

    .line 40
    iput v2, p0, Ljava/sql/DataTruncation;->dataSize:I

    .line 42
    iput v2, p0, Ljava/sql/DataTruncation;->transferSize:I

    .line 74
    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    .line 75
    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    .line 76
    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    .line 77
    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    .line 78
    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    .line 79
    return-void
.end method


# virtual methods
.method public getDataSize()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Ljava/sql/DataTruncation;->dataSize:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Ljava/sql/DataTruncation;->index:I

    return v0
.end method

.method public getParameter()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->parameter:Z

    return v0
.end method

.method public getRead()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->read:Z

    return v0
.end method

.method public getTransferSize()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Ljava/sql/DataTruncation;->transferSize:I

    return v0
.end method
