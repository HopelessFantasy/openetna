.class public Lorg/apache/harmony/luni/util/OIDDatabase;
.super Ljava/lang/Object;
.source "OIDDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    }
.end annotation


# static fields
.field private static instance:Lorg/apache/harmony/luni/util/OIDDatabase;


# instance fields
.field private algorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;",
            ">;"
        }
    .end annotation
.end field

.field private oids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/OIDDatabase;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/util/OIDDatabase;->instance:Lorg/apache/harmony/luni/util/OIDDatabase;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->oids:Ljava/util/Set;

    .line 33
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->algorithms:Ljava/util/Set;

    .line 53
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    const-string v4, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    const-string v4, "MD5withRSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 58
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "SHA1withRSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 63
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.10040.4.3"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "SHA1withDSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 70
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.3.14.3.2.26"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 71
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "SHA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v1, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    const-string v4, "SHA-1"

    invoke-direct {v1, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, alg2:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 74
    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 77
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.113549.2.5"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "MD5"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 84
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.113549.1.1.1"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "RSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 89
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.10040.4.1"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v3, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    const-string v4, "1.3.14.3.2.12"

    invoke-direct {v3, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, oid2:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "DSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 93
    invoke-direct {p0, v3, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 96
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.10046.2.1"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "DiffieHellman"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 99
    return-void
.end method

.method private getAllEquivalents(Ljava/lang/String;Ljava/util/Iterator;)Ljava/util/Set;
    .registers 9
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    const/4 v4, 0x0

    .line 153
    .local v4, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 154
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .line 155
    .local v2, element:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-virtual {v2}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    invoke-virtual {v2}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->getAllEquivalents()Ljava/util/Set;

    move-result-object v0

    .line 157
    .local v0, allMatchingDBEntries:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    new-instance v4, Ljava/util/HashSet;

    .end local v4           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 158
    .restart local v4       #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 159
    .local v1, dbIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .line 161
    .local v3, matchingEntry:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-virtual {v3}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 165
    .end local v0           #allMatchingDBEntries:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    .end local v1           #dbIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    .end local v2           #element:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    .end local v3           #matchingEntry:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    :cond_38
    return-object v4
.end method

.method public static getInstance()Lorg/apache/harmony/luni/util/OIDDatabase;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lorg/apache/harmony/luni/util/OIDDatabase;->instance:Lorg/apache/harmony/luni/util/OIDDatabase;

    return-object v0
.end method

.method private wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V
    .registers 4
    .parameter "oidValue"
    .parameter "algorithmValue"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->oids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->algorithms:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p1, p2}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->addEquivalent(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 105
    invoke-virtual {p2, p1}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->addEquivalent(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getAllAlgorithmsForOID(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .parameter "oid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->oids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->getAllEquivalents(Ljava/lang/String;Ljava/util/Iterator;)Ljava/util/Set;

    move-result-object v1

    .line 125
    if-nez v1, :cond_26

    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown OID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_26
    return-object v1
.end method

.method public getAllOIDsForAlgorithm(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->algorithms:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->getAllEquivalents(Ljava/lang/String;Ljava/util/Iterator;)Ljava/util/Set;

    move-result-object v1

    .line 144
    if-nez v1, :cond_26

    .line 145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported algorithm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_26
    return-object v1
.end method

.method public getFirstAlgorithmForOID(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "oid"

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/util/OIDDatabase;->getAllAlgorithmsForOID(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 118
    .restart local v1       #result:Ljava/lang/String;
    :cond_15
    return-object v1
.end method

.method public getFirstOIDForAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "algorithm"

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/util/OIDDatabase;->getAllOIDsForAlgorithm(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 137
    .restart local v1       #result:Ljava/lang/String;
    :cond_15
    return-object v1
.end method
