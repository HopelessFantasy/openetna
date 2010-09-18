.class public Landroid/server/data/StackTraceElementData;
.super Ljava/lang/Object;
.source "StackTraceElementData.java"


# instance fields
.field final className:Ljava/lang/String;

.field final fileName:Ljava/lang/String;

.field final lineNumber:I

.field final methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 46
    .local v0, dataVersion:I
    if-eqz v0, :cond_22

    .line 47
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected 0. Got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_22
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/StackTraceElement;)V
    .registers 4
    .parameter "element"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, fileName:Ljava/lang/String;
    if-nez v0, :cond_20

    const-string v1, "[unknown source]"

    :goto_11
    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    iput v1, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    .line 42
    return-void

    :cond_20
    move-object v1, v0

    .line 38
    goto :goto_11
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 59
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 63
    return-void
.end method
