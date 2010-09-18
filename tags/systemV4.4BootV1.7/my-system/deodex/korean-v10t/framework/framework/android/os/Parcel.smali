.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# static fields
.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mObject:I

.field private mOwnObject:I

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 188
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 189
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 223
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 2009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2014
    invoke-direct {p0, p1}, Landroid/os/Parcel;->init(I)V

    .line 2015
    return-void
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native destroy()V
.end method

.method private native freeBuffer()V
.end method

.method private native init(I)V
.end method

.method private native internalReadFileDescriptor()Ljava/io/FileDescriptor;
.end method

.method public static obtain()Landroid/os/Parcel;
    .registers 5

    .prologue
    .line 237
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 238
    .local v2, pool:[Landroid/os/Parcel;
    monitor-enter v2

    .line 240
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/4 v3, 0x6

    if-ge v0, v3, :cond_14

    .line 241
    :try_start_7
    aget-object v1, v2, v0

    .line 242
    .local v1, p:Landroid/os/Parcel;
    if-eqz v1, :cond_11

    .line 243
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 247
    monitor-exit v2

    move-object v3, v1

    .line 251
    .end local v1           #p:Landroid/os/Parcel;
    :goto_10
    return-object v3

    .line 240
    .restart local v1       #p:Landroid/os/Parcel;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 250
    .end local v1           #p:Landroid/os/Parcel;
    :cond_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1c

    .line 251
    new-instance v3, Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_10

    .line 250
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .registers 5
    .parameter "obj"

    .prologue
    .line 1991
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 1992
    .local v2, pool:[Landroid/os/Parcel;
    monitor-enter v2

    .line 1994
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/4 v3, 0x6

    if-ge v0, v3, :cond_17

    .line 1995
    :try_start_7
    aget-object v1, v2, v0

    .line 1996
    .local v1, p:Landroid/os/Parcel;
    if-eqz v1, :cond_14

    .line 1997
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2001
    invoke-direct {v1, p0}, Landroid/os/Parcel;->init(I)V

    .line 2002
    monitor-exit v2

    move-object v3, v1

    .line 2006
    .end local v1           #p:Landroid/os/Parcel;
    :goto_13
    return-object v3

    .line 1994
    .restart local v1       #p:Landroid/os/Parcel;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2005
    .end local v1           #p:Landroid/os/Parcel;
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    .line 2006
    new-instance v3, Landroid/os/Parcel;

    invoke-direct {v3, p0}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_13

    .line 2005
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .registers 6
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2053
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_c

    .line 2054
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2056
    .local v1, value:Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 2053
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2058
    .end local v1           #value:Ljava/lang/Object;
    :cond_c
    return-void
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .registers 5
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2043
    :goto_0
    if-lez p2, :cond_c

    .line 2044
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2046
    .local v0, value:Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2047
    add-int/lit8 p2, p2, -0x1

    .line 2048
    goto :goto_0

    .line 2049
    .end local v0           #value:Ljava/lang/Object;
    :cond_c
    return-void
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .registers 6
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2062
    :goto_0
    if-lez p2, :cond_10

    .line 2063
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2064
    .local v0, key:I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2066
    .local v1, value:Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2067
    add-int/lit8 p2, p2, -0x1

    .line 2068
    goto :goto_0

    .line 2069
    .end local v0           #key:I
    .end local v1           #value:Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .registers 7
    .parameter "outVal"
    .parameter "N"

    .prologue
    const/4 v3, 0x1

    .line 2073
    :goto_1
    if-lez p2, :cond_17

    .line 2074
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2075
    .local v0, key:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_14

    move v1, v3

    .line 2077
    .local v1, value:Z
    :goto_e
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2078
    add-int/lit8 p2, p2, -0x1

    .line 2079
    goto :goto_1

    .line 2075
    .end local v1           #value:Z
    :cond_14
    const/4 v2, 0x0

    move v1, v2

    goto :goto_e

    .line 2080
    .end local v0           #key:I
    :cond_17
    return-void
.end method

.method private native writeNative([BII)V
.end method


# virtual methods
.method public final native appendFrom(Landroid/os/Parcel;II)V
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .registers 5

    .prologue
    .line 832
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 833
    .local v0, N:I
    if-ltz v0, :cond_16

    .line 834
    new-array v2, v0, [Landroid/os/IBinder;

    .line 835
    .local v2, val:[Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_14

    .line 836
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v1

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    move-object v3, v2

    .line 840
    .end local v1           #i:I
    .end local v2           #val:[Landroid/os/IBinder;
    :goto_15
    return-object v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1611
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1612
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1613
    const/4 v2, 0x0

    .line 1620
    :goto_7
    return-object v2

    .line 1615
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1616
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_d
    if-lez v0, :cond_19

    .line 1617
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_19
    move-object v2, v1

    .line 1620
    goto :goto_7
.end method

.method public final createBooleanArray()[Z
    .registers 5

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 578
    .local v0, N:I
    if-ltz v0, :cond_23

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_23

    .line 579
    new-array v2, v0, [Z

    .line 580
    .local v2, val:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 581
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    :goto_1a
    aput-boolean v3, v2, v1

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 581
    :cond_1f
    const/4 v3, 0x0

    goto :goto_1a

    :cond_21
    move-object v3, v2

    .line 585
    .end local v1           #i:I
    .end local v2           #val:[Z
    :goto_22
    return-object v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_22
.end method

.method public final native createByteArray()[B
.end method

.method public final createCharArray()[C
    .registers 5

    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 614
    .local v0, N:I
    if-ltz v0, :cond_1f

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1f

    .line 615
    new-array v2, v0, [C

    .line 616
    .local v2, val:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 617
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1d
    move-object v3, v2

    .line 621
    .end local v1           #i:I
    .end local v2           #val:[C
    :goto_1e
    return-object v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public final createDoubleArray()[D
    .registers 6

    .prologue
    .line 759
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 761
    .local v0, N:I
    if-ltz v0, :cond_1e

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1e

    .line 762
    new-array v2, v0, [D

    .line 763
    .local v2, val:[D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_1c

    .line 764
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    move-object v3, v2

    .line 768
    .end local v1           #i:I
    .end local v2           #val:[D
    :goto_1d
    return-object v3

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public final createFloatArray()[F
    .registers 5

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 724
    .local v0, N:I
    if-ltz v0, :cond_1e

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1e

    .line 725
    new-array v2, v0, [F

    .line 726
    .local v2, val:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_1c

    .line 727
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    move-object v3, v2

    .line 731
    .end local v1           #i:I
    .end local v2           #val:[F
    :goto_1d
    return-object v3

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public final createIntArray()[I
    .registers 5

    .prologue
    .line 649
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 650
    .local v0, N:I
    if-ltz v0, :cond_1e

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1e

    .line 651
    new-array v2, v0, [I

    .line 652
    .local v2, val:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_1c

    .line 653
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    move-object v3, v2

    .line 657
    .end local v1           #i:I
    .end local v2           #val:[I
    :goto_1d
    return-object v3

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public final createLongArray()[J
    .registers 6

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 687
    .local v0, N:I
    if-ltz v0, :cond_1e

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1e

    .line 688
    new-array v2, v0, [J

    .line 689
    .local v2, val:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_1c

    .line 690
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    move-object v3, v2

    .line 694
    .end local v1           #i:I
    .end local v2           #val:[J
    :goto_1d
    return-object v3

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public final createMapArrayList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1585
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1596
    :goto_7
    return-object v3

    .line 1589
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1590
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map;>;"
    :goto_d
    if-lez v0, :cond_1d

    .line 1591
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1592
    .local v2, t:Ljava/util/Map;
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 1593
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    add-int/lit8 v0, v0, -0x1

    .line 1595
    goto :goto_d

    .end local v2           #t:Ljava/util/Map;
    :cond_1d
    move-object v3, v1

    .line 1596
    goto :goto_7
.end method

.method public final createStringArray()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 796
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 797
    .local v0, N:I
    if-ltz v0, :cond_16

    .line 798
    new-array v2, v0, [Ljava/lang/String;

    .line 799
    .local v2, val:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_14

    .line 800
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    move-object v3, v2

    .line 804
    .end local v1           #i:I
    .end local v2           #val:[Ljava/lang/String;
    :goto_15
    return-object v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1560
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1561
    const/4 v2, 0x0

    .line 1568
    :goto_7
    return-object v2

    .line 1563
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1564
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_d
    if-lez v0, :cond_19

    .line 1565
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_19
    move-object v2, v1

    .line 1568
    goto :goto_7
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1716
    .local p1, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1717
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1718
    const/4 v3, 0x0

    .line 1726
    :goto_7
    return-object v3

    .line 1720
    :cond_8
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1721
    .local v2, l:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_1e

    .line 1722
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 1723
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1721
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    move-object v3, v2

    .line 1726
    goto :goto_7
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v3, 0x0

    .line 1496
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1497
    .local v0, N:I
    if-gez v0, :cond_9

    move-object v2, v3

    .line 1509
    :goto_8
    return-object v2

    .line 1500
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1501
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :goto_e
    if-lez v0, :cond_24

    .line 1502
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 1503
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1505
    :cond_20
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_24
    move-object v2, v1

    .line 1509
    goto :goto_8
.end method

.method public final native dataAvail()I
.end method

.method public final native dataCapacity()I
.end method

.method public final native dataPosition()I
.end method

.method public final native dataSize()I
.end method

.method public final native enforceInterface(Ljava/lang/String;)V
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2024
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 2025
    return-void
.end method

.method public final native hasFileDescriptors()Z
.end method

.method public final native marshall()[B
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .registers 5
    .parameter "loader"

    .prologue
    .line 1442
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1443
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1444
    const/4 v2, 0x0

    .line 1448
    :goto_7
    return-object v2

    .line 1446
    :cond_8
    new-array v1, v0, [Ljava/lang/Object;

    .line 1447
    .local v1, l:[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    move-object v2, v1

    .line 1448
    goto :goto_7
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .registers 5
    .parameter "loader"

    .prologue
    .line 1426
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1427
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1428
    const/4 v2, 0x0

    .line 1432
    :goto_7
    return-object v2

    .line 1430
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1431
    .local v1, l:Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    move-object v2, v1

    .line 1432
    goto :goto_7
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .registers 6
    .parameter "val"

    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 846
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 847
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 848
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 851
    .end local v1           #i:I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 853
    .restart local v1       #i:I
    :cond_1b
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1689
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1690
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1691
    .local v1, N:I
    const/4 v2, 0x0

    .line 1692
    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_17

    if-ge v2, v1, :cond_17

    .line 1693
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1692
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1695
    :cond_17
    :goto_17
    if-ge v2, v1, :cond_23

    .line 1696
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1695
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1698
    :cond_23
    :goto_23
    if-ge v2, v0, :cond_2b

    .line 1699
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1698
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1701
    :cond_2b
    return-void
.end method

.method public final readBooleanArray([Z)V
    .registers 6
    .parameter "val"

    .prologue
    .line 590
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 591
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_18

    .line 592
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_20

    .line 593
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_11
    aput-boolean v2, p1, v1

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 593
    :cond_16
    const/4 v2, 0x0

    goto :goto_11

    .line 596
    .end local v1           #i:I
    :cond_18
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 598
    .restart local v1       #i:I
    :cond_20
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 1357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .registers 5
    .parameter "loader"

    .prologue
    .line 1367
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1368
    .local v1, length:I
    if-gez v1, :cond_8

    .line 1369
    const/4 v2, 0x0

    .line 1376
    :goto_7
    return-object v2

    .line 1372
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 1373
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_12

    .line 1374
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_12
    move-object v2, v0

    .line 1376
    goto :goto_7
.end method

.method public final readByte()B
    .registers 2

    .prologue
    .line 1310
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .registers 6
    .parameter "val"

    .prologue
    const/4 v3, 0x0

    .line 1390
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1391
    .local v0, ba:[B
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_e

    .line 1392
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    return-void

    .line 1394
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readCharArray([C)V
    .registers 6
    .parameter "val"

    .prologue
    .line 626
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 627
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_14

    .line 628
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_1c

    .line 629
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 632
    .end local v1           #i:I
    :cond_14
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 634
    .restart local v1       #i:I
    :cond_1c
    return-void
.end method

.method public final native readDouble()D
.end method

.method public final readDoubleArray([D)V
    .registers 6
    .parameter "val"

    .prologue
    .line 773
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 774
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 775
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 776
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 779
    .end local v1           #i:I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 781
    .restart local v1       #i:I
    :cond_1b
    return-void
.end method

.method public final readException()V
    .registers 3

    .prologue
    .line 1231
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1232
    .local v0, code:I
    if-nez v0, :cond_7

    .line 1235
    :goto_6
    return-void

    .line 1233
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    goto :goto_6
.end method

.method public final readException(ILjava/lang/String;)V
    .registers 6
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 1244
    packed-switch p1, :pswitch_data_44

    .line 1256
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :pswitch_26
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :pswitch_2c
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :pswitch_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1252
    :pswitch_38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :pswitch_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1244
    :pswitch_data_44
    .packed-switch -0x5
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .prologue
    .line 1296
    invoke-direct {p0}, Landroid/os/Parcel;->internalReadFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1297
    .local v0, fd:Ljava/io/FileDescriptor;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public final native readFloat()F
.end method

.method public final readFloatArray([F)V
    .registers 6
    .parameter "val"

    .prologue
    .line 736
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 737
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 738
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 739
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 742
    .end local v1           #i:I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 744
    .restart local v1       #i:I
    :cond_1b
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .registers 5
    .parameter "loader"

    .prologue
    .line 1342
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1343
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1344
    const/4 v2, 0x0

    .line 1348
    :goto_7
    return-object v2

    .line 1346
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1347
    .local v1, m:Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    move-object v2, v1

    .line 1348
    goto :goto_7
.end method

.method public final native readInt()I
.end method

.method public final readIntArray([I)V
    .registers 6
    .parameter "val"

    .prologue
    .line 662
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 663
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 664
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 665
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 668
    .end local v1           #i:I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    .restart local v1       #i:I
    :cond_1b
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter "outVal"
    .parameter "loader"

    .prologue
    .line 1329
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1330
    .local v0, N:I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    .line 1331
    return-void
.end method

.method public final native readLong()J
.end method

.method public final readLongArray([J)V
    .registers 6
    .parameter "val"

    .prologue
    .line 699
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 700
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 701
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 702
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 705
    .end local v1           #i:I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 707
    .restart local v1       #i:I
    :cond_1b
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter "outVal"
    .parameter "loader"

    .prologue
    .line 1319
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1320
    .local v0, N:I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 1321
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .registers 6
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2033
    :goto_0
    if-lez p2, :cond_10

    .line 2034
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2035
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2036
    .local v1, value:Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    add-int/lit8 p2, p2, -0x1

    .line 2038
    goto :goto_0

    .line 2039
    .end local v0           #key:Ljava/lang/Object;
    .end local v1           #value:Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method public final readMapList(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map;>;"
    const/4 v4, 0x0

    .line 1659
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1660
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1661
    .local v1, N:I
    const/4 v2, 0x0

    .line 1662
    .local v2, i:I
    :goto_a
    if-ge v2, v0, :cond_1c

    if-ge v2, v1, :cond_1c

    .line 1663
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1664
    .local v3, t:Ljava/util/Map;
    invoke-virtual {p0, v3, v4}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 1666
    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1662
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1668
    .end local v3           #t:Ljava/util/Map;
    :cond_1c
    :goto_1c
    if-ge v2, v1, :cond_2c

    .line 1669
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1670
    .restart local v3       #t:Ljava/util/Map;
    invoke-virtual {p0, v3, v4}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 1672
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1668
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1674
    .end local v3           #t:Ljava/util/Map;
    :cond_2c
    :goto_2c
    if-ge v2, v0, :cond_34

    .line 1675
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1674
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1677
    :cond_34
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 12
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v6, "Parcel"

    const-string v6, "Class not found when unmarshalling: "

    const-string v6, ", e: "

    const-string v6, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    .line 1882
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1883
    .local v5, name:Ljava/lang/String;
    if-nez v5, :cond_11

    move-object v6, v7

    .line 1933
    .end local p0
    :goto_10
    return-object v6

    .line 1887
    .restart local p0
    :cond_11
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v6

    .line 1888
    :try_start_14
    sget-object v7, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1889
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    if-nez v4, :cond_28

    .line 1890
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1891
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    sget-object v7, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1893
    :cond_28
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_5f

    .line 1894
    .local v1, creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_11c

    .line 1896
    if-nez p1, :cond_62

    :try_start_32
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v0, v7

    .line 1898
    .local v0, c:Ljava/lang/Class;
    :goto_37
    const-string v7, "CREATOR"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1899
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_44} :catch_69
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_44} :catch_a6
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_44} :catch_e3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_32 .. :try_end_44} :catch_fe

    .line 1923
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_119

    .line 1924
    :try_start_46
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1931
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :catchall_5f
    move-exception v7

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_46 .. :try_end_61} :catchall_5f

    throw v7

    .line 1896
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :cond_62
    const/4 v7, 0x1

    :try_start_63
    invoke-static {v5, v7, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_63 .. :try_end_66} :catch_69
    .catch Ljava/lang/ClassNotFoundException; {:try_start_63 .. :try_end_66} :catch_a6
    .catch Ljava/lang/ClassCastException; {:try_start_63 .. :try_end_66} :catch_e3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_63 .. :try_end_66} :catch_fe

    move-result-object v7

    move-object v0, v7

    goto :goto_37

    .line 1901
    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    :catch_69
    move-exception v7

    move-object v2, v7

    .line 1902
    .local v2, e:Ljava/lang/IllegalAccessException;
    :try_start_6b
    const-string v7, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1907
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_a6
    move-exception v7

    move-object v2, v7

    .line 1908
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v7, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1913
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_e3
    move-exception v7

    move-object v2, v7

    .line 1914
    .local v2, e:Ljava/lang/ClassCastException;
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1918
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_fe
    move-exception v7

    move-object v2, v7

    .line 1919
    .local v2, e:Ljava/lang/NoSuchFieldException;
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1929
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    .restart local v0       #c:Ljava/lang/Class;
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v3       #f:Ljava/lang/reflect/Field;
    :cond_119
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    .end local v0           #c:Ljava/lang/Class;
    .end local v3           #f:Ljava/lang/reflect/Field;
    :cond_11c
    monitor-exit v6
    :try_end_11d
    .catchall {:try_start_6b .. :try_end_11d} :catchall_5f

    .line 1933
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Parcelable;

    move-object v6, p0

    goto/16 :goto_10
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .registers 6
    .parameter "loader"

    .prologue
    .line 1943
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1944
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1945
    const/4 v3, 0x0

    .line 1951
    :goto_7
    return-object v3

    .line 1947
    :cond_8
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 1948
    .local v2, p:[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_16

    .line 1949
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1948
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    move-object v3, v2

    .line 1951
    goto :goto_7
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .registers 11

    .prologue
    const-string v9, ")"

    .line 1960
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1961
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_a

    .line 1965
    const/4 v6, 0x0

    .line 1972
    .end local p0
    :goto_9
    return-object v6

    .line 1968
    .restart local p0
    :cond_a
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1969
    .local v5, serializedData:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1971
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    :try_start_13
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1972
    .local v4, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/Serializable;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1e} :catch_41

    move-object v6, p0

    goto :goto_9

    .line 1973
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    :catch_20
    move-exception v6

    move-object v2, v6

    .line 1974
    .local v2, ioe:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1977
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_41
    move-exception v6

    move-object v1, v6

    .line 1978
    .local v1, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encounteredClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .registers 5
    .parameter "loader"

    .prologue
    .line 1458
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1459
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1460
    const/4 v2, 0x0

    .line 1464
    :goto_7
    return-object v2

    .line 1462
    :cond_8
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1463
    .local v1, sa:Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    move-object v2, v1

    .line 1464
    goto :goto_7
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .registers 4

    .prologue
    .line 1473
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1474
    .local v0, N:I
    if-gez v0, :cond_8

    .line 1475
    const/4 v2, 0x0

    .line 1479
    :goto_7
    return-object v2

    .line 1477
    :cond_8
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1478
    .local v1, sa:Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    move-object v2, v1

    .line 1479
    goto :goto_7
.end method

.method public final native readString()Ljava/lang/String;
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .registers 6
    .parameter "val"

    .prologue
    .line 809
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 810
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 811
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 812
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 815
    .end local v1           #i:I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    .restart local v1       #i:I
    :cond_1b
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1403
    const/4 v0, 0x0

    .line 1405
    .local v0, array:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1406
    .local v2, length:I
    if-ltz v2, :cond_15

    .line 1408
    new-array v0, v2, [Ljava/lang/String;

    .line 1410
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_15

    .line 1412
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1416
    .end local v1           #i:I
    :cond_15
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1633
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1634
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1635
    .local v1, N:I
    const/4 v2, 0x0

    .line 1636
    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_17

    if-ge v2, v1, :cond_17

    .line 1637
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1636
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1639
    :cond_17
    :goto_17
    if-ge v2, v1, :cond_23

    .line 1640
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1639
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1642
    :cond_23
    :goto_23
    if-ge v2, v0, :cond_2b

    .line 1643
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1642
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1645
    :cond_2b
    return-void
.end method

.method public final native readStrongBinder()Landroid/os/IBinder;
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1730
    .local p1, val:[Ljava/lang/Object;,"[TT;"
    .local p2, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1731
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_1d

    .line 1732
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_25

    .line 1733
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 1734
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1732
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1736
    :cond_19
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_16

    .line 1740
    .end local v1           #i:I
    :cond_1d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1742
    .restart local v1       #i:I
    :cond_25
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1750
    .local p1, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    .line 1525
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1526
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1527
    .local v1, N:I
    const/4 v2, 0x0

    .line 1528
    .local v2, i:I
    :goto_a
    if-ge v2, v0, :cond_22

    if-ge v2, v1, :cond_22

    .line 1529
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 1530
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1528
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1532
    :cond_1e
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 1535
    :cond_22
    :goto_22
    if-ge v2, v1, :cond_38

    .line 1536
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    .line 1537
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1539
    :cond_34
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1542
    :cond_38
    :goto_38
    if-ge v2, v0, :cond_40

    .line 1543
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1542
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1545
    :cond_40
    return-void
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7
    .parameter "loader"

    .prologue
    const/4 v3, 0x1

    .line 1785
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1787
    .local v1, type:I
    packed-switch v1, :pswitch_data_e0

    .line 1864
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    const/4 v3, 0x4

    sub-int v0, v2, v3

    .line 1865
    .local v0, off:I
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1789
    .end local v0           #off:I
    :pswitch_3c
    const/4 v2, 0x0

    .line 1861
    :goto_3d
    return-object v2

    .line 1792
    :pswitch_3e
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    .line 1795
    :pswitch_43
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3d

    .line 1798
    :pswitch_4c
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_3d

    .line 1801
    :pswitch_51
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_3d

    .line 1804
    :pswitch_56
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_3d

    .line 1807
    :pswitch_60
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3d

    .line 1810
    :pswitch_69
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_3d

    .line 1813
    :pswitch_72
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_3d

    .line 1816
    :pswitch_7b
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_87

    move v2, v3

    :goto_82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3d

    :cond_87
    const/4 v2, 0x0

    goto :goto_82

    .line 1819
    :pswitch_89
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3d

    .line 1822
    :pswitch_90
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_3d

    .line 1825
    :pswitch_95
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    goto :goto_3d

    .line 1828
    :pswitch_9a
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_3d

    .line 1831
    :pswitch_9f
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    .line 1834
    :pswitch_a4
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_3d

    .line 1837
    :pswitch_a9
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_3d

    .line 1840
    :pswitch_ae
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    goto :goto_3d

    .line 1843
    :pswitch_b3
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    goto :goto_3d

    .line 1846
    :pswitch_b8
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_3d

    .line 1849
    :pswitch_c2
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    goto/16 :goto_3d

    .line 1852
    :pswitch_c8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    goto/16 :goto_3d

    .line 1855
    :pswitch_ce
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    goto/16 :goto_3d

    .line 1858
    :pswitch_d4
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v2

    goto/16 :goto_3d

    .line 1861
    :pswitch_da
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_3d

    .line 1787
    :pswitch_data_e0
    .packed-switch -0x1
        :pswitch_3c
        :pswitch_3e
        :pswitch_43
        :pswitch_4c
        :pswitch_da
        :pswitch_51
        :pswitch_56
        :pswitch_60
        :pswitch_69
        :pswitch_72
        :pswitch_7b
        :pswitch_89
        :pswitch_90
        :pswitch_ce
        :pswitch_9a
        :pswitch_9f
        :pswitch_a4
        :pswitch_c8
        :pswitch_a9
        :pswitch_ae
        :pswitch_b3
        :pswitch_b8
        :pswitch_c2
        :pswitch_d4
        :pswitch_95
    .end packed-switch
.end method

.method public final recycle()V
    .registers 4

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 261
    iget v2, p0, Landroid/os/Parcel;->mOwnObject:I

    if-eqz v2, :cond_17

    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    move-object v1, v2

    .line 262
    .local v1, pool:[Landroid/os/Parcel;
    :goto_a
    monitor-enter v1

    .line 263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1e

    .line 264
    :try_start_f
    aget-object v2, v1, v0

    if-nez v2, :cond_1b

    .line 265
    aput-object p0, v1, v0

    .line 266
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_20

    .line 270
    :goto_16
    return-void

    .line 261
    .end local v0           #i:I
    .end local v1           #pool:[Landroid/os/Parcel;
    :cond_17
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    move-object v1, v2

    goto :goto_a

    .line 263
    .restart local v0       #i:I
    .restart local v1       #pool:[Landroid/os/Parcel;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 269
    :cond_1e
    :try_start_1e
    monitor-exit v1

    goto :goto_16

    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_20

    throw v2
.end method

.method public final native setDataCapacity(I)V
.end method

.method public final native setDataPosition(I)V
.end method

.method public final native setDataSize(I)V
.end method

.method public final native unmarshall([BII)V
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .registers 5
    .parameter "val"

    .prologue
    .line 512
    if-nez p1, :cond_7

    .line 513
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    :cond_6
    return-void

    .line 516
    :cond_7
    array-length v0, p1

    .line 517
    .local v0, N:I
    const/4 v1, 0x0

    .line 518
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    :goto_c
    if-ge v1, v0, :cond_6

    .line 520
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .registers 5
    .parameter "val"

    .prologue
    .line 820
    if-eqz p1, :cond_11

    .line 821
    array-length v0, p1

    .line 822
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 824
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 827
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    :cond_15
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p1, val:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_7

    .line 954
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    :cond_6
    return-void

    .line 957
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 958
    .local v0, N:I
    const/4 v1, 0x0

    .line 959
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    :goto_f
    if-ge v1, v0, :cond_6

    .line 961
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 962
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeBooleanArray([Z)V
    .registers 5
    .parameter "val"

    .prologue
    .line 562
    if-eqz p1, :cond_16

    .line 563
    array-length v0, p1

    .line 564
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 566
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 566
    :cond_14
    const/4 v2, 0x0

    goto :goto_e

    .line 569
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_16
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    :cond_1a
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .registers 3
    .parameter "val"

    .prologue
    .line 479
    if-nez p1, :cond_7

    .line 480
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    :goto_6
    return-void

    .line 484
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6
.end method

.method public final writeByte(B)V
    .registers 2
    .parameter "val"

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    return-void
.end method

.method public final writeByteArray([B)V
    .registers 4
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 361
    if-eqz p1, :cond_8

    array-length v0, p1

    :goto_4
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 362
    return-void

    :cond_8
    move v0, v1

    .line 361
    goto :goto_4
.end method

.method public final writeByteArray([BII)V
    .registers 6
    .parameter "b"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 372
    if-nez p1, :cond_7

    .line 373
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    :goto_6
    return-void

    .line 376
    :cond_7
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_10

    if-ltz p3, :cond_10

    if-gez p2, :cond_16

    .line 377
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 379
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->writeNative([BII)V

    goto :goto_6
.end method

.method public final writeCharArray([C)V
    .registers 5
    .parameter "val"

    .prologue
    .line 601
    if-eqz p1, :cond_11

    .line 602
    array-length v0, p1

    .line 603
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 605
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 608
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    :cond_15
    return-void
.end method

.method public final native writeDouble(D)V
.end method

.method public final writeDoubleArray([D)V
    .registers 6
    .parameter "val"

    .prologue
    .line 747
    if-eqz p1, :cond_11

    .line 748
    array-length v0, p1

    .line 749
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 751
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 754
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    :cond_15
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 1188
    const/4 v0, 0x0

    .line 1189
    .local v0, code:I
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_12

    .line 1190
    const/4 v0, -0x1

    .line 1200
    :cond_6
    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    if-nez v0, :cond_30

    .line 1202
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2a

    .line 1203
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1
    throw p1

    .line 1191
    .restart local p1
    :cond_12
    instance-of v1, p1, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_18

    .line 1192
    const/4 v0, -0x2

    goto :goto_6

    .line 1193
    :cond_18
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_1e

    .line 1194
    const/4 v0, -0x3

    goto :goto_6

    .line 1195
    :cond_1e
    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_24

    .line 1196
    const/4 v0, -0x4

    goto :goto_6

    .line 1197
    :cond_24
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_6

    .line 1198
    const/4 v0, -0x5

    goto :goto_6

    .line 1205
    :cond_2a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1207
    :cond_30
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method public final native writeFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method public final native writeFloat(F)V
.end method

.method public final writeFloatArray([F)V
    .registers 5
    .parameter "val"

    .prologue
    .line 710
    if-eqz p1, :cond_11

    .line 711
    array-length v0, p1

    .line 712
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 714
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 717
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    :cond_15
    return-void
.end method

.method public final native writeInt(I)V
.end method

.method public final writeIntArray([I)V
    .registers 5
    .parameter "val"

    .prologue
    .line 637
    if-eqz p1, :cond_11

    .line 638
    array-length v0, p1

    .line 639
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 641
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 644
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    :cond_15
    return-void
.end method

.method public final native writeInterfaceToken(Ljava/lang/String;)V
.end method

.method public final writeList(Ljava/util/List;)V
    .registers 5
    .parameter "val"

    .prologue
    .line 493
    if-nez p1, :cond_7

    .line 494
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    :cond_6
    return-void

    .line 497
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 498
    .local v0, N:I
    const/4 v1, 0x0

    .line 499
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    :goto_f
    if-ge v1, v0, :cond_6

    .line 501
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final native writeLong(J)V
.end method

.method public final writeLongArray([J)V
    .registers 6
    .parameter "val"

    .prologue
    .line 673
    if-eqz p1, :cond_11

    .line 674
    array-length v0, p1

    .line 675
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 677
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 680
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    :cond_15
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 455
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 463
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    :cond_6
    return-void

    .line 466
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 467
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 469
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 470
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public final writeMapList(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 928
    .local p1, val:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map;>;"
    if-nez p1, :cond_7

    .line 929
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    :cond_6
    return-void

    .line 932
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 933
    .local v0, N:I
    const/4 v1, 0x0

    .line 934
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    :goto_f
    if-ge v1, v0, :cond_6

    .line 936
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeNoException()V
    .registers 2

    .prologue
    .line 1218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    return-void
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .registers 5
    .parameter "p"
    .parameter "parcelableFlags"

    .prologue
    .line 1128
    if-nez p1, :cond_7

    .line 1129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1135
    :goto_6
    return-void

    .line 1132
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1134
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .registers 6
    .parameter
    .parameter "parcelableFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1768
    .local p1, value:[Landroid/os/Parcelable;,"[TT;"
    if-eqz p1, :cond_11

    .line 1769
    array-length v0, p1

    .line 1770
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1771
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1772
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1771
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1775
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    :cond_15
    return-void
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .registers 9
    .parameter "s"

    .prologue
    .line 1144
    if-nez p1, :cond_7

    .line 1145
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1163
    :goto_6
    return-void

    .line 1148
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1149
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1151
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1153
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_17
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1154
    .local v3, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1155
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 1157
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_6

    .line 1158
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :catch_2a
    move-exception v4

    move-object v1, v4

    .line 1159
    .local v1, ioe:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, val:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 533
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    :cond_6
    return-void

    .line 536
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 537
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_6

    .line 540
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .registers 5
    .parameter "val"

    .prologue
    .line 547
    if-nez p1, :cond_7

    .line 548
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    :cond_6
    return-void

    .line 551
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 552
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    const/4 v1, 0x0

    .line 554
    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_6

    .line 555
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_1f
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 556
    :cond_26
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public final native writeString(Ljava/lang/String;)V
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .registers 5
    .parameter "val"

    .prologue
    .line 784
    if-eqz p1, :cond_11

    .line 785
    array-length v0, p1

    .line 786
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 788
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 791
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    :cond_15
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 901
    .local p1, val:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 902
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    :cond_6
    return-void

    .line 905
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 906
    .local v0, N:I
    const/4 v1, 0x0

    .line 907
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    :goto_f
    if-ge v1, v0, :cond_6

    .line 909
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 910
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final native writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .registers 3
    .parameter "val"

    .prologue
    .line 425
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 426
    return-void

    .line 425
    :cond_7
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .registers 7
    .parameter
    .parameter "parcelableFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, val:[Landroid/os/Parcelable;,"[TT;"
    if-eqz p1, :cond_1c

    .line 987
    array-length v0, p1

    .line 988
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 990
    aget-object v2, p1, v1

    .line 991
    .local v2, item:Landroid/os/Parcelable;,"TT;"
    if-eqz v2, :cond_17

    .line 992
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 989
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 995
    :cond_17
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 999
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #item:Landroid/os/Parcelable;,"TT;"
    :cond_1c
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    :cond_20
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, val:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 870
    if-nez p1, :cond_8

    .line 871
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    :cond_7
    return-void

    .line 874
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 875
    .local v0, N:I
    const/4 v1, 0x0

    .line 876
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    :goto_10
    if-ge v1, v0, :cond_7

    .line 878
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 879
    .local v2, item:Landroid/os/Parcelable;,"TT;"
    if-eqz v2, :cond_24

    .line 880
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 885
    :goto_21
    add-int/lit8 v1, v1, 0x1

    .line 886
    goto :goto_10

    .line 883
    :cond_24
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1040
    if-nez p1, :cond_9

    .line 1041
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    .end local p1
    :goto_8
    return-void

    .line 1042
    .restart local p1
    :cond_9
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1043
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 1045
    .restart local p1
    :cond_16
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_27

    .line 1046
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 1048
    .restart local p1
    :cond_27
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_35

    .line 1049
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_8

    .line 1051
    .restart local p1
    :cond_35
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_43

    .line 1053
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_8

    .line 1055
    .restart local p1
    :cond_43
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_51

    .line 1056
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    check-cast p1, Landroid/os/Parcelable;

    .end local p1
    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_8

    .line 1058
    .restart local p1
    :cond_51
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_63

    .line 1059
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    check-cast p1, Ljava/lang/Short;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 1061
    .restart local p1
    :cond_63
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_75

    .line 1062
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8

    .line 1064
    .restart local p1
    :cond_75
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_87

    .line 1065
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_8

    .line 1067
    .restart local p1
    :cond_87
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_9b

    .line 1068
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_8

    .line 1070
    .restart local p1
    :cond_9b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b4

    .line 1071
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b2

    move v0, v2

    :goto_ad
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_b2
    move v0, v1

    goto :goto_ad

    .line 1073
    .restart local p1
    :cond_b4
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_c4

    .line 1075
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1
    invoke-static {p1, p0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_8

    .line 1077
    .restart local p1
    :cond_c4
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d4

    .line 1078
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_8

    .line 1080
    .restart local p1
    :cond_d4
    instance-of v0, p1, Landroid/util/SparseArray;

    if-eqz v0, :cond_e4

    .line 1081
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1082
    check-cast p1, Landroid/util/SparseArray;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_8

    .line 1083
    .restart local p1
    :cond_e4
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f6

    .line 1084
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    check-cast p1, [Z

    .end local p1
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_8

    .line 1086
    .restart local p1
    :cond_f6
    instance-of v0, p1, [B

    if-eqz v0, :cond_108

    .line 1087
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_8

    .line 1089
    .restart local p1
    :cond_108
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_11a

    .line 1090
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    check-cast p1, [Ljava/lang/String;

    .end local p1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1092
    .restart local p1
    :cond_11a
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_12a

    .line 1093
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    check-cast p1, Landroid/os/IBinder;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 1095
    .restart local p1
    :cond_12a
    instance-of v0, p1, [Landroid/os/Parcelable;

    if-eqz v0, :cond_13c

    .line 1096
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    .line 1098
    .restart local p1
    :cond_13c
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_14e

    .line 1099
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1101
    .restart local p1
    :cond_14e
    instance-of v0, p1, [I

    if-eqz v0, :cond_160

    .line 1102
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_8

    .line 1104
    .restart local p1
    :cond_160
    instance-of v0, p1, [J

    if-eqz v0, :cond_172

    .line 1105
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    check-cast p1, [J

    .end local p1
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_8

    .line 1107
    .restart local p1
    :cond_172
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_186

    .line 1108
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 1110
    .restart local p1
    :cond_186
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_196

    .line 1112
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    check-cast p1, Ljava/io/Serializable;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_8

    .line 1115
    .restart local p1
    :cond_196
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unable to marshal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
