.class public Ljava/security/cert/CollectionCertStoreParameters;
.super Ljava/lang/Object;
.source "CollectionCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# static fields
.field private static final defaultCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Ljava/security/cert/CollectionCertStoreParameters;->defaultCollection:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Ljava/security/cert/CollectionCertStoreParameters;->defaultCollection:Ljava/util/Collection;

    iput-object v0, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    .line 71
    iget-object v0, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    if-nez v0, :cond_f

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :cond_f
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Ljava/security/cert/CollectionCertStoreParameters;

    iget-object v1, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCollection()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CollectionCertStoreParameters: [\ncollection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
