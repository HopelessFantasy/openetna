.class public Landroid/syncml/pim/PropertyNode;
.super Ljava/lang/Object;
.source "PropertyNode.java"


# instance fields
.field public paramMap:Landroid/content/ContentValues;

.field public paramMap_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propGroupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propName:Ljava/lang/String;

.field public propValue:Ljava/lang/String;

.field public propValue_bytes:[B

.field public propValue_vector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v1, p0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v1, p0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[BLandroid/content/ContentValues;Ljava/util/Set;Ljava/util/Set;)V
    .registers 10
    .parameter "propName"
    .parameter "propValue"
    .parameter
    .parameter "propValue_bytes"
    .parameter "paramMap"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/content/ContentValues;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, propValue_vector:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p6, paramMap_TYPE:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p7, propGroupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, ""

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_20

    .line 72
    iput-object p1, p0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 76
    :goto_9
    if-eqz p2, :cond_25

    .line 77
    iput-object p2, p0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 81
    :goto_d
    if-eqz p3, :cond_2a

    .line 82
    iput-object p3, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 86
    :goto_11
    iput-object p4, p0, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    .line 87
    if-eqz p5, :cond_32

    .line 88
    iput-object p5, p0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 92
    :goto_17
    if-eqz p6, :cond_3a

    .line 93
    iput-object p6, p0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    .line 97
    :goto_1b
    if-eqz p7, :cond_42

    .line 98
    iput-object p7, p0, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    .line 102
    :goto_1f
    return-void

    .line 74
    :cond_20
    const-string v0, ""

    iput-object v1, p0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    goto :goto_9

    .line 79
    :cond_25
    const-string v0, ""

    iput-object v1, p0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    goto :goto_d

    .line 84
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    goto :goto_11

    .line 90
    :cond_32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    goto :goto_17

    .line 95
    :cond_3a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    goto :goto_1b

    .line 100
    :cond_42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    goto :goto_1f
.end method

.method public static decode(Ljava/lang/String;)Landroid/syncml/pim/PropertyNode;
    .registers 13
    .parameter "encodedString"

    .prologue
    .line 258
    new-instance v9, Landroid/syncml/pim/PropertyNode;

    invoke-direct {v9}, Landroid/syncml/pim/PropertyNode;-><init>()V

    .line 259
    .local v9, propertyNode:Landroid/syncml/pim/PropertyNode;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 260
    .local p0, trimed:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    move-object p0, v9

    .line 321
    .end local v9           #propertyNode:Landroid/syncml/pim/PropertyNode;
    .local p0, propertyNode:Landroid/syncml/pim/PropertyNode;
    :goto_10
    return-object p0

    .line 263
    .restart local v9       #propertyNode:Landroid/syncml/pim/PropertyNode;
    .local p0, trimed:Ljava/lang/String;
    :cond_11
    const-string v0, "],"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 265
    .local p0, elems:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v3, p0

    .local v3, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v2, v0

    .end local v0           #i$:I
    .end local v3           #len$:I
    .end local p0           #arr$:[Ljava/lang/String;
    .local v2, i$:I
    :goto_1b
    if-ge v2, v3, :cond_e8

    aget-object v0, p0, v2

    .line 266
    .local v0, elem:Ljava/lang/String;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 267
    .local v1, index:I
    const/4 v4, 0x0

    const/4 v5, 0x1

    sub-int v5, v1, v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, name:Ljava/lang/String;
    const-string v5, "(?<!\\\\),"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 269
    .local v5, pattern:Ljava/util/regex/Pattern;
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v1           #index:I
    move-result-object v0

    .end local v0           #elem:Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v10

    .line 270
    .local v10, values:[Ljava/lang/String;
    const-string v0, "propName"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 271
    const/4 v0, 0x0

    aget-object v0, v10, v0

    iput-object v0, v9, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 265
    .end local v2           #i$:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #pattern:Ljava/util/regex/Pattern;
    .end local v10           #values:[Ljava/lang/String;
    :cond_4b
    :goto_4b
    add-int/lit8 v0, v2, 0x1

    .local v0, i$:I
    move v2, v0

    .end local v0           #i$:I
    .restart local v2       #i$:I
    goto :goto_1b

    .line 272
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #pattern:Ljava/util/regex/Pattern;
    .restart local v10       #values:[Ljava/lang/String;
    :cond_4f
    const-string v0, "propGroupSet"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 273
    move-object v0, v10

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .end local v2           #i$:I
    .end local v5           #pattern:Ljava/util/regex/Pattern;
    .local v1, i$:I
    :goto_5a
    if-ge v1, v4, :cond_4b

    aget-object v5, v0, v1

    .line 274
    .local v5, value:Ljava/lang/String;
    iget-object v6, v9, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 276
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .restart local v2       #i$:I
    .local v4, name:Ljava/lang/String;
    .local v5, pattern:Ljava/util/regex/Pattern;
    :cond_66
    const-string v0, "paramMap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 277
    iget-object v7, v9, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 278
    .local v7, paramMap:Landroid/content/ContentValues;
    iget-object v8, v9, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    .line 279
    .local v8, paramMap_TYPE:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v10

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .end local v2           #i$:I
    .end local v5           #pattern:Ljava/util/regex/Pattern;
    .end local v10           #values:[Ljava/lang/String;
    .restart local v1       #i$:I
    :goto_75
    if-ge v1, v4, :cond_4b

    aget-object v5, v0, v1

    .line 280
    .local v5, value:Ljava/lang/String;
    const-string v6, "="

    const/4 v10, 0x2

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, tmp:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v6, v5

    .line 285
    .local v5, mapKey:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v6, v6, v10

    .end local v6           #tmp:[Ljava/lang/String;
    const-string v10, "\\\\,"

    const-string v11, ","

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "\\\\\\\\"

    const-string v11, "\\\\"

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, mapValue:Ljava/lang/String;
    const-string v10, "TYPE"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 288
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 290
    :cond_a4
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 293
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v6           #mapValue:Ljava/lang/String;
    .end local v7           #paramMap:Landroid/content/ContentValues;
    .end local v8           #paramMap_TYPE:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2       #i$:I
    .local v4, name:Ljava/lang/String;
    .local v5, pattern:Ljava/util/regex/Pattern;
    .restart local v10       #values:[Ljava/lang/String;
    :cond_a8
    const-string v0, "propValue"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, v9, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 296
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v10

    .line 297
    .local v4, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b9
    if-ge v1, v4, :cond_e0

    .line 298
    aget-object v6, v10, v1

    const-string v7, "\\\\,"

    const-string v8, ","

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\\\\\\\"

    const-string v8, "\\\\"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, normValue:Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v6, 0x1

    sub-int v6, v4, v6

    if-ge v1, v6, :cond_dd

    .line 304
    .end local v6           #normValue:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_dd
    add-int/lit8 v1, v1, 0x1

    goto :goto_b9

    .line 307
    :cond_e0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #builder:Ljava/lang/StringBuilder;
    iput-object v0, v9, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    goto/16 :goto_4b

    .line 313
    .end local v1           #i:I
    .end local v4           #length:I
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #values:[Ljava/lang/String;
    :cond_e8
    iget-object p0, v9, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    const-string v0, "ENCODING"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 314
    .local p0, encoding:Ljava/lang/String;
    if-eqz p0, :cond_115

    const-string v0, "BASE64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_102

    const-string v0, "B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    .end local p0           #encoding:Ljava/lang/String;
    if-eqz p0, :cond_115

    .line 317
    :cond_102
    iget-object p0, v9, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p0

    iput-object p0, v9, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    :cond_115
    move-object p0, v9

    .line 321
    .end local v9           #propertyNode:Landroid/syncml/pim/PropertyNode;
    .local p0, propertyNode:Landroid/syncml/pim/PropertyNode;
    goto/16 :goto_10
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .registers 14

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v10, p0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1c

    .line 172
    const-string v10, "propName:["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v10, p0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v10, "],"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1c
    iget-object v10, p0, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v7

    .line 177
    .local v7, size:I
    if-lez v7, :cond_51

    .line 178
    iget-object v6, p0, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    .line 179
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "propGroup:["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, i:I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, group:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const/4 v10, 0x1

    sub-int v10, v7, v10

    if-ge v3, v10, :cond_49

    .line 186
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 190
    .end local v2           #group:Ljava/lang/String;
    :cond_4c
    const-string v10, "],"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_51
    iget-object v10, p0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-gtz v10, :cond_61

    iget-object v10, p0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_105

    .line 194
    :cond_61
    iget-object v9, p0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 195
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "paramMap:["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v10, p0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v7

    .line 197
    const/4 v3, 0x0

    .line 198
    .restart local v3       #i:I
    invoke-virtual {v9}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 203
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\\\"

    const-string v12, "\\\\\\\\"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    const-string v12, "\\\\,"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/4 v10, 0x1

    sub-int v10, v7, v10

    if-ge v3, v10, :cond_b6

    .line 215
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 220
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b9
    iget-object v6, p0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    .line 221
    .restart local v6       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v7

    .line 222
    if-lez v3, :cond_ca

    if-lez v7, :cond_ca

    .line 223
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_ca
    const/4 v3, 0x0

    .line 226
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_100

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 227
    .local v8, type:Ljava/lang/String;
    const-string v10, "TYPE="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v10, "\\\\"

    const-string v11, "\\\\\\\\"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    const-string v12, "\\\\,"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/4 v10, 0x1

    sub-int v10, v7, v10

    if-ge v3, v10, :cond_fd

    .line 232
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_fd
    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    .line 236
    .end local v8           #type:Ljava/lang/String;
    :cond_100
    const-string v10, "],"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_105
    iget-object v10, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 240
    if-lez v7, :cond_142

    .line 241
    const-string v10, "propValue:["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v5, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 243
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .end local p0
    .restart local v3       #i:I
    :goto_115
    if-ge v3, v7, :cond_13d

    .line 244
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v10, "\\\\"

    const-string v11, "\\\\\\\\"

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    const-string v12, "\\\\,"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const/4 v10, 0x1

    sub-int v10, v7, v10

    if-ge v3, v10, :cond_13a

    .line 248
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_13a
    add-int/lit8 v3, v3, 0x1

    goto :goto_115

    .line 251
    :cond_13d
    const-string v10, "],"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .end local v3           #i:I
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    instance-of v2, p1, Landroid/syncml/pim/PropertyNode;

    if-nez v2, :cond_8

    move v2, v4

    .line 134
    :goto_7
    return v2

    .line 110
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/syncml/pim/PropertyNode;

    move-object v1, v0

    .line 112
    .local v1, node:Landroid/syncml/pim/PropertyNode;
    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    iget-object v3, v1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v2, v4

    .line 113
    goto :goto_7

    .line 114
    :cond_1c
    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v3, v1, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    move v2, v4

    .line 115
    goto :goto_7

    .line 116
    :cond_28
    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    iget-object v3, v1, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    move v2, v4

    .line 117
    goto :goto_7

    .line 118
    :cond_34
    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    iget-object v3, v1, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    move v2, v4

    .line 119
    goto :goto_7

    .line 122
    :cond_40
    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    if-eqz v2, :cond_50

    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    iget-object v3, v1, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_50

    move v2, v5

    .line 123
    goto :goto_7

    .line 126
    :cond_50
    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    iget-object v3, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    move v2, v4

    .line 127
    goto :goto_7

    .line 134
    :cond_5c
    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    iget-object v3, v1, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    iget-object v2, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v5, :cond_76

    iget-object v2, v1, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_78

    :cond_76
    move v2, v5

    goto :goto_7

    :cond_78
    move v2, v4

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "propName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", paramMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", propmMap_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", propGroupSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v1, :cond_54

    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_54

    .line 152
    const-string v1, ", propValue_vector size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    :cond_54
    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    if-eqz v1, :cond_63

    .line 156
    const-string v1, ", propValue_bytes size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    :cond_63
    const-string v1, ", propValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
