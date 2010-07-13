.class Ljavax/security/auth/Subject$SecureSet$2;
.super Ljava/util/AbstractSet;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;

.field final synthetic val$c:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 699
    .local p0, this:Ljavax/security/auth/Subject$SecureSet$2;,"Ljavax/security/auth/Subject$SecureSet.2;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$2;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$2;->val$c:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 667
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, this:Ljavax/security/auth/Subject$SecureSet$2;,"Ljavax/security/auth/Subject$SecureSet.2;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->val$c:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.0C"

    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$2;->val$c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_1e
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 678
    const/4 v0, 0x0

    .line 681
    :goto_27
    return v0

    .line 680
    :cond_28
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 681
    const/4 v0, 0x1

    goto :goto_27
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, this:Ljavax/security/auth/Subject$SecureSet$2;,"Ljavax/security/auth/Subject$SecureSet.2;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, this:Ljavax/security/auth/Subject$SecureSet$2;,"Ljavax/security/auth/Subject$SecureSet.2;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-nez p1, :cond_8

    .line 693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 695
    :cond_8
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 700
    .local p0, this:Ljavax/security/auth/Subject$SecureSet$2;,"Ljavax/security/auth/Subject$SecureSet.2;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
