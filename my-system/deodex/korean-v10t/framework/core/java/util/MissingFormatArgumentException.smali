.class public Ljava/util/MissingFormatArgumentException;
.super Ljava/util/IllegalFormatException;
.source "MissingFormatArgumentException.java"


# static fields
.field private static final serialVersionUID:J = 0x124d163L


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

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
    iput-object p1, p0, Ljava/util/MissingFormatArgumentException;->s:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getFormatSpecifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Ljava/util/MissingFormatArgumentException;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    const-string v0, "K0348"

    iget-object v1, p0, Ljava/util/MissingFormatArgumentException;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
