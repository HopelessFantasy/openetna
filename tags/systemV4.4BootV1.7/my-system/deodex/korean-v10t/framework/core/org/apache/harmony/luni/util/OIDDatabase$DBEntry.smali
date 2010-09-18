.class Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
.super Ljava/lang/Object;
.source "OIDDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/OIDDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DBEntry"
.end annotation


# instance fields
.field private final equivalents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->equivalents:Ljava/util/List;

    .line 174
    iput-object p1, p0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->value:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method addEquivalent(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V
    .registers 3
    .parameter "entry"

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->equivalents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method getAllEquivalents()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->equivalents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->value:Ljava/lang/String;

    return-object v0
.end method
