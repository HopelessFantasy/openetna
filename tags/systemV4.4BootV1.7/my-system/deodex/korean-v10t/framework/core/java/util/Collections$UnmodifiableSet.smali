.class Ljava/util/Collections$UnmodifiableSet;
.super Ljava/util/Collections$UnmodifiableCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7fe26d2e70647fabL


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1340
    .local p0, this:Ljava/util/Collections$UnmodifiableSet;,"Ljava/util/Collections$UnmodifiableSet<TE;>;"
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    .line 1341
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 1345
    .local p0, this:Ljava/util/Collections$UnmodifiableSet;,"Ljava/util/Collections$UnmodifiableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSet;->c:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1350
    .local p0, this:Ljava/util/Collections$UnmodifiableSet;,"Ljava/util/Collections$UnmodifiableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSet;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
