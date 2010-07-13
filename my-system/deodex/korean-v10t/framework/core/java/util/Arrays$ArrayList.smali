.class Ljava/util/Arrays$ArrayList;
.super Ljava/util/AbstractList;
.source "Arrays.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x265bc3413277f92eL


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, storage:[Ljava/lang/Object;,"[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 38
    if-nez p1, :cond_b

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_b
    iput-object p1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    const/4 v5, 0x1

    .line 46
    if-eqz p1, :cond_16

    .line 47
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_25

    aget-object v1, v0, v2

    .line 48
    .local v1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v5

    .line 59
    .end local v1           #element:Ljava/lang/Object;,"TE;"
    :goto_12
    return v4

    .line 47
    .restart local v1       #element:Ljava/lang/Object;,"TE;"
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 53
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #element:Ljava/lang/Object;,"TE;"
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_16
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1a
    if-ge v2, v3, :cond_25

    aget-object v1, v0, v2

    .line 54
    .restart local v1       #element:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_22

    move v4, v5

    .line 55
    goto :goto_12

    .line 53
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 59
    .end local v1           #element:Ljava/lang/Object;,"TE;"
    :cond_25
    const/4 v4, 0x0

    goto :goto_12
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    :try_start_0
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v1

    .line 66
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 67
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 73
    .local p0, this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    if-eqz p1, :cond_17

    .line 74
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 75
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v0

    .line 86
    :goto_13
    return v1

    .line 74
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 80
    .end local v0           #i:I
    :cond_17
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_18
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 81
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_25

    move v1, v0

    .line 82
    goto :goto_13

    .line 80
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 86
    :cond_28
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    const/4 v2, 0x1

    .line 91
    if-eqz p1, :cond_19

    .line 92
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_2b

    .line 93
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v0

    .line 104
    :goto_15
    return v1

    .line 92
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 98
    .end local v0           #i:I
    :cond_19
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    sub-int v0, v1, v2

    .restart local v0       #i:I
    :goto_1e
    if-ltz v0, :cond_2b

    .line 99
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_28

    move v1, v0

    .line 100
    goto :goto_15

    .line 98
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 104
    :cond_2b
    const/4 v1, -0x1

    goto :goto_15
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    :try_start_0
    iget-object v2, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v2, p1

    .line 111
    .local v1, result:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aput-object p2, v2, p1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_8} :catch_11

    .line 112
    return-object v1

    .line 113
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 114
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 115
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 116
    .local v0, e:Ljava/lang/ArrayStoreException;
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2
.end method

.method public size()I
    .registers 2

    .prologue
    .line 122
    .local p0, this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 127
    .local p0, this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/Arrays$ArrayList;,"Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    .line 133
    invoke-virtual {p0}, Ljava/util/Arrays$ArrayList;->size()I

    move-result v2

    .line 134
    .local v2, size:I
    array-length v3, p1

    if-le v2, v3, :cond_1a

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 136
    .local v1, ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 138
    .end local v1           #ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1a
    iget-object v3, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-static {v3, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    array-length v3, p1

    if-ge v2, v3, :cond_25

    .line 140
    const/4 v3, 0x0

    aput-object v3, p1, v2

    .line 142
    :cond_25
    return-object p1
.end method
