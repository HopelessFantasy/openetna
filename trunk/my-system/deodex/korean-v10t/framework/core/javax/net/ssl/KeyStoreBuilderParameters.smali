.class public Ljavax/net/ssl/KeyStoreBuilderParameters;
.super Ljava/lang/Object;
.source "KeyStoreBuilderParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# instance fields
.field private ksbuilders:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    .line 45
    if-eqz p1, :cond_11

    .line 46
    iget-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_11
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .parameter "parameters"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_d

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Builders list is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Builders list is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/List;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
