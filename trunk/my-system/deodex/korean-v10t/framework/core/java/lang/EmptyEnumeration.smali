.class final Ljava/lang/EmptyEnumeration;
.super Ljava/lang/Object;
.source "EmptyEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/URL;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final mInst:Ljava/lang/EmptyEnumeration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/EmptyEnumeration;

    invoke-direct {v0}, Ljava/lang/EmptyEnumeration;-><init>()V

    sput-object v0, Ljava/lang/EmptyEnumeration;->mInst:Ljava/lang/EmptyEnumeration;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/lang/EmptyEnumeration;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Ljava/lang/EmptyEnumeration;->mInst:Ljava/lang/EmptyEnumeration;

    return-object v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/EmptyEnumeration;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
