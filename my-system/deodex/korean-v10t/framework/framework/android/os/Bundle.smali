.class public final Landroid/os/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/Bundle; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Bundle"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mFdsKnown:Z

.field private mHasFds:Z

.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 40
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 1407
    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 7
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 115
    iget-object v0, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_44

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 117
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 118
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    :goto_2a
    iget-object v0, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_47

    .line 124
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 129
    :goto_37
    iget-boolean v0, p1, Landroid/os/Bundle;->mHasFds:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 130
    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 131
    iget-object v0, p1, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 132
    return-void

    .line 120
    :cond_44
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_2a

    .line 126
    :cond_47
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    goto :goto_37
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "parcelledData"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "parcelledData"
    .parameter "length"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "loader"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 94
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 95
    return-void
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .registers 11
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "e"

    .prologue
    .line 706
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 707
    return-void
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .registers 9
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "defaultValue"
    .parameter "e"

    .prologue
    const-string v2, "Bundle"

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v1, "Bundle"

    const-string v1, "Attempt to cast generated internal exception:"

    invoke-static {v2, v1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 197
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 200
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 211
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 3

    .prologue
    .line 1422
    const/4 v0, 0x0

    .line 1423
    .local v0, mask:I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1424
    or-int/lit8 v0, v0, 0x1

    .line 1426
    :cond_9
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 222
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 684
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 717
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 718
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 719
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 726
    :goto_c
    return v1

    .line 723
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 724
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 725
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 726
    goto :goto_c
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1192
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1193
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1194
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1201
    :goto_d
    return-object v3

    .line 1198
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Z

    move-object v3, v0

    check-cast v3, [Z
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1199
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1200
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1201
    goto :goto_d
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1015
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1016
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1017
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1024
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1021
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/Bundle;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1022
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1023
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Bundle"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1024
    goto :goto_d
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 3
    .parameter "key"

    .prologue
    .line 738
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 739
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .registers 9
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 750
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 751
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 752
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_10

    .line 753
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 759
    .end local v2           #o:Ljava/lang/Object;
    :goto_f
    return-object v0

    .line 756
    .restart local v2       #o:Ljava/lang/Object;
    :cond_10
    :try_start_10
    check-cast v2, Ljava/lang/Byte;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_14

    .end local v2           #o:Ljava/lang/Object;
    move-object v0, v2

    goto :goto_f

    .line 757
    .restart local v2       #o:Ljava/lang/Object;
    :catch_14
    move-exception v5

    .line 758
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 759
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_f
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1214
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1215
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1216
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1223
    :goto_d
    return-object v3

    .line 1220
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1221
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1222
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1223
    goto :goto_d
.end method

.method public getChar(Ljava/lang/String;)C
    .registers 3
    .parameter "key"

    .prologue
    .line 771
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 784
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 785
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 792
    :goto_c
    return v1

    .line 789
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 790
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 791
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 792
    goto :goto_c
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1258
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1259
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1260
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1267
    :goto_d
    return-object v3

    .line 1264
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [C

    move-object v3, v0

    check-cast v3, [C
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1265
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1266
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1267
    goto :goto_d
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 993
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 994
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 995
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1002
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 999
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1000
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1001
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1002
    goto :goto_d
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .parameter "key"

    .prologue
    .line 936
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 937
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 11
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 948
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 949
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 950
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move-wide v1, p2

    .line 957
    :goto_c
    return-wide v1

    .line 954
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result-wide v1

    goto :goto_c

    .line 955
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 956
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move-wide v1, p2

    .line 957
    goto :goto_c
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1346
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1347
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1348
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1355
    :goto_d
    return-object v3

    .line 1352
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [D

    move-object v3, v0

    check-cast v3, [D
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1353
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1354
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1355
    goto :goto_d
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3
    .parameter "key"

    .prologue
    .line 903
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 904
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 916
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 917
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 924
    :goto_c
    return v1

    .line 921
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 922
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 923
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 924
    goto :goto_c
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1324
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1325
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1326
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1333
    :goto_d
    return-object v3

    .line 1330
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [F

    move-object v3, v0

    check-cast v3, [F
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1331
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1332
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1333
    goto :goto_d
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1394
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1395
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1396
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1403
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1400
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1401
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1402
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "IBinder"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1403
    goto :goto_d
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 838
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 849
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 850
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 851
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 858
    :goto_c
    return v1

    .line 855
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 856
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 857
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 858
    goto :goto_c
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1280
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1281
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1282
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1289
    :goto_d
    return-object v3

    .line 1286
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1287
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1288
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "int[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1289
    goto :goto_d
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1148
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1149
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1150
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1157
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1154
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1155
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1156
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<Integer>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1157
    goto :goto_d
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4
    .parameter "key"

    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 871
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 11
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 882
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 883
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 884
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move-wide v1, p2

    .line 891
    :goto_c
    return-wide v1

    .line 888
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result-wide v1

    goto :goto_c

    .line 889
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 890
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move-wide v1, p2

    .line 891
    goto :goto_c
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1302
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1303
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1304
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1311
    :goto_d
    return-object v3

    .line 1308
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    check-cast v3, [J
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1309
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1310
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "long[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1311
    goto :goto_d
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1037
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1038
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1039
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1046
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1043
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/Parcelable;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1044
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1045
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Parcelable"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1046
    goto :goto_d
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1059
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1060
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1061
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1068
    :goto_d
    return-object v3

    .line 1065
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Landroid/os/Parcelable;

    move-object v3, v0

    check-cast v3, [Landroid/os/Parcelable;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1066
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1067
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "Parcelable[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1068
    goto :goto_d
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1081
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1082
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1083
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1090
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1087
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1088
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1089
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1090
    goto :goto_d
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1126
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1127
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1128
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1135
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1132
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/io/Serializable;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1133
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1134
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Serializable"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1135
    goto :goto_d
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 3
    .parameter "key"

    .prologue
    .line 804
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 805
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 817
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 818
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 825
    :goto_c
    return v1

    .line 822
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 823
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 824
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 825
    goto :goto_c
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1236
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1237
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1238
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1245
    :goto_d
    return-object v3

    .line 1242
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [S

    move-object v3, v0

    check-cast v3, [S
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1243
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1244
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "short[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1245
    goto :goto_d
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1104
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1105
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1106
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1113
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1110
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/util/SparseArray;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1111
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1112
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "SparseArray"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1113
    goto :goto_d
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 971
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 972
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 973
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 980
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 977
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 978
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 979
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 980
    goto :goto_d
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1368
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1369
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1370
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1377
    :goto_d
    return-object v3

    .line 1374
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1375
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1376
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1377
    goto :goto_d
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1170
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1171
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1172
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1179
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1176
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1177
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1178
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<String>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1179
    goto :goto_d
.end method

.method public hasFileDescriptors()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 264
    iget-boolean v8, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-nez v8, :cond_17

    .line 265
    const/4 v3, 0x0

    .line 267
    .local v3, fdFound:Z
    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v8, :cond_1a

    .line 268
    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 269
    const/4 v3, 0x1

    .line 320
    :cond_13
    :goto_13
    iput-boolean v3, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 321
    iput-boolean v9, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 323
    .end local v3           #fdFound:Z
    :cond_17
    iget-boolean v8, p0, Landroid/os/Bundle;->mHasFds:Z

    return v8

    .line 273
    .restart local v3       #fdFound:Z
    :cond_1a
    iget-object v8, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 274
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_24
    :goto_24
    if-nez v3, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 275
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 276
    .local v6, obj:Ljava/lang/Object;
    instance-of v8, v6, Landroid/os/Parcelable;

    if-eqz v8, :cond_46

    .line 277
    check-cast v6, Landroid/os/Parcelable;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_24

    .line 279
    const/4 v3, 0x1

    .line 280
    goto :goto_13

    .line 282
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_46
    instance-of v8, v6, [Landroid/os/Parcelable;

    if-eqz v8, :cond_64

    .line 283
    check-cast v6, [Landroid/os/Parcelable;

    .end local v6           #obj:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, [Landroid/os/Parcelable;

    move-object v1, v0

    .line 284
    .local v1, array:[Landroid/os/Parcelable;
    array-length v8, v1

    sub-int v5, v8, v9

    .local v5, n:I
    :goto_53
    if-ltz v5, :cond_24

    .line 285
    aget-object v8, v1, v5

    invoke-interface {v8}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_61

    .line 287
    const/4 v3, 0x1

    .line 288
    goto :goto_24

    .line 284
    :cond_61
    add-int/lit8 v5, v5, -0x1

    goto :goto_53

    .line 291
    .end local v1           #array:[Landroid/os/Parcelable;
    .end local v5           #n:I
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_64
    instance-of v8, v6, Landroid/util/SparseArray;

    if-eqz v8, :cond_87

    .line 292
    move-object v0, v6

    check-cast v0, Landroid/util/SparseArray;

    move-object v2, v0

    .line 294
    .local v2, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int v5, v8, v9

    .restart local v5       #n:I
    :goto_72
    if-ltz v5, :cond_24

    .line 295
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    invoke-interface {v8}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_84

    .line 297
    const/4 v3, 0x1

    .line 298
    goto :goto_24

    .line 294
    :cond_84
    add-int/lit8 v5, v5, -0x1

    goto :goto_72

    .line 301
    .end local v2           #array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v5           #n:I
    :cond_87
    instance-of v8, v6, Ljava/util/ArrayList;

    if-eqz v8, :cond_24

    .line 302
    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 305
    .local v1, array:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_24

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroid/os/Parcelable;

    if-eqz v8, :cond_24

    .line 307
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v5, v8, v9

    .restart local v5       #n:I
    :goto_a4
    if-ltz v5, :cond_24

    .line 308
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 309
    .local v7, p:Landroid/os/Parcelable;
    if-eqz v7, :cond_b9

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b9

    .line 311
    const/4 v3, 0x1

    .line 312
    goto/16 :goto_24

    .line 307
    :cond_b9
    add-int/lit8 v5, v5, -0x1

    goto :goto_a4
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 189
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 257
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/Bundle;)V
    .registers 4
    .parameter "map"

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 242
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    .line 243
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 246
    iget-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    iget-boolean v1, p1, Landroid/os/Bundle;->mHasFds:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 247
    iget-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 248
    return-void

    .line 247
    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 335
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 548
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 655
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 656
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 347
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 560
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 359
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 584
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 443
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 419
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 632
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 407
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 620
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 672
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 383
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 596
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 512
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 395
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 608
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 455
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 457
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 469
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 471
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 484
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 486
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 536
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 371
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 572
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p2, value:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 499
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 501
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 431
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 643
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 644
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 524
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .parameter "parcel"

    .prologue
    .line 1462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1463
    .local v0, length:I
    if-gez v0, :cond_1f

    .line 1464
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length in parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1466
    :cond_1f
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1467
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;I)V
    .registers 11
    .parameter "parcel"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Bundle"

    .line 1470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1471
    .local v0, magic:I
    const v4, 0x4c444e42

    if-eq v0, v4, :cond_34

    .line 1473
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1474
    .local v3, st:Ljava/lang/String;
    const-string v4, "Bundle"

    const-string v4, "readBundle: bad magic number"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const-string v4, "Bundle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readBundle: trace = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .end local v3           #st:Ljava/lang/String;
    :cond_34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1480
    .local v1, offset:I
    add-int v4, v1, p2

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1483
    .local v2, p:Landroid/os/Parcel;
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1484
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1485
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1487
    iput-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 1488
    invoke-virtual {v2}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v4

    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 1489
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 1490
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 232
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .parameter "loader"

    .prologue
    .line 141
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 142
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 181
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .prologue
    const-string v0, "]"

    .line 1494
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_28

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_48

    move-result-object v0

    .line 1498
    :goto_26
    monitor-exit p0

    return-object v0

    :cond_28
    :try_start_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_48

    move-result-object v0

    goto :goto_26

    .line 1494
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unparcel()V
    .registers 5

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-nez v1, :cond_7

    .line 172
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 162
    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .local v0, N:I
    if-ltz v0, :cond_5

    .line 166
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 169
    :cond_1a
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 170
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    goto :goto_5

    .line 158
    .end local v0           #N:I
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const v4, 0x4c444e42

    .line 1435
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v3, :cond_1a

    .line 1436
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 1437
    .local v0, length:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1439
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1454
    :goto_19
    return-void

    .line 1441
    .end local v0           #length:I
    :cond_1a
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1444
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1445
    .local v2, oldPos:I
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 1446
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1449
    .local v1, newPos:I
    const/16 v3, 0x8

    sub-int v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1450
    sub-int v0, v1, v2

    .line 1451
    .restart local v0       #length:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_19
.end method
