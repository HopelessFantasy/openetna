.class public Ljava/io/InvalidClassException;
.super Ljava/io/ObjectStreamException;
.source "InvalidClassException.java"


# static fields
.field private static final serialVersionUID:J = -0x3c23083669749950L


# instance fields
.field public classname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "className"
    .parameter "detailMessage"

    .prologue
    .line 71
    invoke-direct {p0, p2}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_21
    return-object v0
.end method
