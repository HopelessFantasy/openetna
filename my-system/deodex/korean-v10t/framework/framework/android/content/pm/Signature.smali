.class public Landroid/content/pm/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHashCode:I

.field private mHaveHashCode:Z

.field private final mSignature:[B

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    new-instance v0, Landroid/content/pm/Signature$1;

    invoke-direct {v0}, Landroid/content/pm/Signature$1;-><init>()V

    sput-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/Signature$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .parameter "text"

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x61

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 48
    .local v0, N:I
    new-array v4, v0, [B

    .line 49
    .local v4, sig:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v0, :cond_3d

    .line 50
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 51
    .local v2, c:C
    if-lt v2, v6, :cond_37

    sub-int v5, v2, v6

    add-int/lit8 v5, v5, 0xa

    :goto_1e
    shl-int/lit8 v5, v5, 0x4

    int-to-byte v1, v5

    .line 53
    .local v1, b:B
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 54
    if-lt v2, v6, :cond_3a

    sub-int v5, v2, v6

    add-int/lit8 v5, v5, 0xa

    :goto_2f
    int-to-byte v5, v5

    or-int/2addr v5, v1

    int-to-byte v1, v5

    .line 55
    aput-byte v1, v4, v3

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 51
    .end local v1           #b:B
    :cond_37
    sub-int v5, v2, v7

    goto :goto_1e

    .line 54
    .restart local v1       #b:B
    :cond_3a
    sub-int v5, v2, v7

    goto :goto_2f

    .line 57
    .end local v1           #b:B
    .end local v2           #c:C
    :cond_3d
    iput-object v4, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 58
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "signature"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 117
    if-eqz p1, :cond_10

    .line 118
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/content/pm/Signature;

    move-object v1, v0

    .line 119
    .local v1, other:Landroid/content/pm/Signature;
    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v3, v1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_d} :catch_f

    move-result v2

    .line 123
    .end local v1           #other:Landroid/content/pm/Signature;
    :goto_e
    return v2

    .line 121
    :catch_f
    move-exception v2

    .line 123
    :cond_10
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    if-eqz v0, :cond_7

    .line 129
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    .line 133
    :goto_6
    return v0

    .line 131
    :cond_7
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    .line 133
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    goto :goto_6
.end method

.method public toByteArray()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 110
    .local v0, bytes:[B
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    return-object v0
.end method

.method public toChars()[C
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0, v0}, Landroid/content/pm/Signature;->toChars([C[I)[C

    move-result-object v0

    return-object v0
.end method

.method public toChars([C[I)[C
    .registers 13
    .parameter "existingArray"
    .parameter "outLen"

    .prologue
    const/16 v9, 0xa

    .line 78
    iget-object v4, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 79
    .local v4, sig:[B
    array-length v0, v4

    .line 80
    .local v0, N:I
    mul-int/lit8 v1, v0, 0x2

    .line 81
    .local v1, N2:I
    if-eqz p1, :cond_c

    array-length v7, p1

    if-le v1, v7, :cond_33

    :cond_c
    new-array v7, v1, [C

    move-object v5, v7

    .line 83
    .local v5, text:[C
    :goto_f
    const/4 v3, 0x0

    .local v3, j:I
    :goto_10
    if-ge v3, v0, :cond_3b

    .line 84
    aget-byte v6, v4, v3

    .line 85
    .local v6, v:B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 86
    .local v2, d:I
    mul-int/lit8 v7, v3, 0x2

    if-lt v2, v9, :cond_35

    add-int/lit8 v8, v2, 0x61

    sub-int/2addr v8, v9

    :goto_1f
    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 87
    and-int/lit8 v2, v6, 0xf

    .line 88
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    if-lt v2, v9, :cond_38

    add-int/lit8 v8, v2, 0x61

    sub-int/2addr v8, v9

    :goto_2d
    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .end local v2           #d:I
    .end local v3           #j:I
    .end local v5           #text:[C
    .end local v6           #v:B
    :cond_33
    move-object v5, p1

    .line 81
    goto :goto_f

    .line 86
    .restart local v2       #d:I
    .restart local v3       #j:I
    .restart local v5       #text:[C
    .restart local v6       #v:B
    :cond_35
    add-int/lit8 v8, v2, 0x30

    goto :goto_1f

    .line 88
    :cond_38
    add-int/lit8 v8, v2, 0x30

    goto :goto_2d

    .line 90
    .end local v2           #d:I
    .end local v6           #v:B
    :cond_3b
    if-eqz p2, :cond_40

    const/4 v7, 0x0

    aput v0, p2, v7

    .line 91
    :cond_40
    return-object v5
.end method

.method public toCharsString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    iget-object v1, p0, Landroid/content/pm/Signature;->mString:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/content/pm/Signature;->mString:Ljava/lang/String;

    .line 102
    :goto_6
    return-object v1

    .line 100
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 101
    .local v0, str:Ljava/lang/String;
    iput-object v0, p0, Landroid/content/pm/Signature;->mString:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Landroid/content/pm/Signature;->mString:Ljava/lang/String;

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    .line 141
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 142
    return-void
.end method
