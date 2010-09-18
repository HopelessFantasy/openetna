.class public Ljava/util/IllegalFormatFlagsException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatFlagsException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xc1128L


# instance fields
.field private flags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "f"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 42
    if-nez p1, :cond_b

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45
    :cond_b
    iput-object p1, p0, Ljava/util/IllegalFormatFlagsException;->flags:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getFlags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Ljava/util/IllegalFormatFlagsException;->flags:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "Flags = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Ljava/util/IllegalFormatFlagsException;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
