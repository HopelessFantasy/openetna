.class public Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
.super Ljava/lang/Object;
.source "ListOfTypes.java"


# static fields
.field static final empty:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedTypes:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->empty:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->list:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method constructor <init>([Ljava/lang/reflect/Type;)V
    .registers 7
    .parameter "types"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->list:Ljava/util/ArrayList;

    .line 41
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/reflect/Type;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_d
    if-ge v1, v2, :cond_19

    aget-object v3, v0, v1

    .line 42
    .local v3, t:Ljava/lang/reflect/Type;
    iget-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 44
    .end local v3           #t:Ljava/lang/reflect/Type;
    :cond_19
    return-void
.end method


# virtual methods
.method add(Ljava/lang/reflect/Type;)V
    .registers 4
    .parameter "elem"

    .prologue
    .line 29
    if-nez p1, :cond_a

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding null type is not allowed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public getResolvedTypes()[Ljava/lang/reflect/Type;
    .registers 8

    .prologue
    .line 63
    iget-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    if-nez v5, :cond_3a

    .line 64
    iget-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Type;

    iput-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, i:I
    iget-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 68
    .local v4, t:Ljava/lang/reflect/Type;
    :try_start_21
    iget-object v6, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    move-object v0, v4

    check-cast v0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v6, v2
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_2d} :catch_30

    .line 72
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 69
    :catch_30
    move-exception v5

    move-object v1, v5

    .line 70
    .local v1, e:Ljava/lang/ClassCastException;
    iget-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    aput-object v4, v5, v2

    goto :goto_2d

    .line 74
    .end local v1           #e:Ljava/lang/ClassCastException;
    .end local v4           #t:Ljava/lang/reflect/Type;
    :cond_37
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->list:Ljava/util/ArrayList;

    .line 76
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3a
    iget-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    return-object v5
.end method

.method length()I
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 54
    .local v0, i:I
    iget-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 55
    .local v3, t:Ljava/lang/reflect/Type;
    if-eqz v0, :cond_1f

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 58
    .end local v3           #t:Ljava/lang/reflect/Type;
    :cond_27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
