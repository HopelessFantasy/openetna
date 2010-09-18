.class public Lorg/bouncycastle/i18n/MissingEntryException;
.super Ljava/lang/RuntimeException;
.source "MissingEntryException.java"


# instance fields
.field protected final key:Ljava/lang/String;

.field protected final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "message"
    .parameter "resource"
    .parameter "key"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p2, p0, Lorg/bouncycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lorg/bouncycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    return-object v0
.end method
