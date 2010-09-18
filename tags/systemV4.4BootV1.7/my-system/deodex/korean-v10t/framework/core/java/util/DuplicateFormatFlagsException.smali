.class public Ljava/util/DuplicateFormatFlagsException;
.super Ljava/util/IllegalFormatException;
.source "DuplicateFormatFlagsException.java"


# static fields
.field private static final serialVersionUID:J = 0x1203f23L


# instance fields
.field private flags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "f"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 40
    if-nez p1, :cond_b

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43
    :cond_b
    iput-object p1, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getFlags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "Flags of the DuplicateFormatFlagsException is\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
