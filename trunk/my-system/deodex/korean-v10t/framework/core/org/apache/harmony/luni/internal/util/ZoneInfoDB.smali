.class public final Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;
.super Ljava/lang/Object;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;
    }
.end annotation


# static fields
.field private static final DEFAULT_VERSION:Ljava/lang/String; = "2007h"

.field private static final INDEX_FILE_NAME:Ljava/lang/String; = null

.field private static final TZINT_LENGTH:I = 0x4

.field private static final TZNAME_LENGTH:I = 0x28

.field private static final VERSION_FILE_NAME:Ljava/lang/String;

.field private static final ZONE_DIRECTORY_NAME:Ljava/lang/String;

.field private static final ZONE_FILE_NAME:Ljava/lang/String;

.field private static defaultZone:Ljava/util/TimeZone;

.field private static lengths:[I

.field private static lock:Ljava/lang/Object;

.field private static names:[Ljava/lang/String;

.field private static offsets:[I

.field private static starts:[I

.field private static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/usr/share/zoneinfo/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "zoneinfo.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_FILE_NAME:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "zoneinfo.idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->INDEX_FILE_NAME:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "zoneinfo.version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->VERSION_FILE_NAME:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->lock:Ljava/lang/Object;

    .line 76
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->defaultZone:Ljava/util/TimeZone;

    .line 152
    :try_start_6b
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->readVersion()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_72

    .line 159
    :goto_6e
    :try_start_6e
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->readDatabase()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_78

    .line 167
    :goto_71
    return-void

    .line 153
    :catch_72
    move-exception v0

    .line 155
    .local v0, e:Ljava/io/IOException;
    const-string v1, "2007h"

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->version:Ljava/lang/String;

    goto :goto_6e

    .line 160
    .end local v0           #e:Ljava/io/IOException;
    :catch_78
    move-exception v0

    .line 162
    .restart local v0       #e:Ljava/io/IOException;
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->names:[Ljava/lang/String;

    .line 163
    new-array v1, v3, [I

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->starts:[I

    .line 164
    new-array v1, v3, [I

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->lengths:[I

    .line 165
    new-array v1, v3, [I

    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->offsets:[I

    goto :goto_71
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static _getAvailableIDs(IZ)[Ljava/lang/String;
    .registers 8
    .parameter "rawOffset"
    .parameter "checkOffset"

    .prologue
    .line 183
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->offsets:[I

    .line 186
    .local v1, _offsets:[I
    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->names:[Ljava/lang/String;

    .line 187
    .local v0, _names:[Ljava/lang/String;
    array-length v3, v1

    .line 188
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v3, :cond_1b

    .line 189
    if-eqz p1, :cond_13

    aget v5, v1, v2

    if-ne v5, p0, :cond_18

    .line 190
    :cond_13
    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 194
    :cond_1b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static _getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 14
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 202
    .local v3, length:I
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_119

    .line 204
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #fis:Ljava/io/FileInputStream;
    sget-object v2, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_FILE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v1       #fis:Ljava/io/FileInputStream;
    sget-object v2, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->names:[Ljava/lang/String;

    invoke-static {v2, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 207
    .local v2, i:I
    if-gez v2, :cond_35

    .line 208
    const/4 p0, 0x0

    move v0, v3

    .end local v3           #length:I
    .local v0, length:I
    move-object v12, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    move-object v1, p0

    move-object p0, v12

    .line 273
    .end local v2           #i:I
    .end local v12           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    :goto_34
    return-object v1

    .line 211
    .local v0, f:Ljava/io/File;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v2       #i:I
    .restart local v3       #length:I
    .local p0, name:Ljava/lang/String;
    :cond_35
    sget-object v3, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->starts:[I

    .end local v3           #length:I
    aget v3, v3, v2

    .line 212
    .local v3, start:I
    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->lengths:[I

    aget v2, v4, v2

    .line 214
    .local v2, length:I
    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 217
    .end local v3           #start:I
    :goto_41
    if-nez v1, :cond_115

    .line 218
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #fis:Ljava/io/FileInputStream;
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 219
    .restart local v1       #fis:Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .end local v2           #length:I
    long-to-int v0, v2

    .local v0, length:I
    move v10, v0

    .end local v0           #length:I
    .local v10, length:I
    move-object v9, v1

    .line 222
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v9, fis:Ljava/io/FileInputStream;
    :goto_4f
    new-array v7, v10, [B

    .line 223
    .local v7, data:[B
    const/4 v0, 0x0

    .line 224
    .local v0, nread:I
    :cond_52
    :goto_52
    if-ge v0, v10, :cond_5e

    .line 225
    sub-int v1, v10, v0

    invoke-virtual {v9, v7, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 226
    .local v1, size:I
    if-lez v1, :cond_52

    .line 227
    add-int/2addr v0, v1

    goto :goto_52

    .line 232
    .end local v1           #size:I
    :cond_5e
    :try_start_5e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_6b

    .line 240
    .end local v0           #nread:I
    :goto_61
    array-length v0, v7

    const/16 v1, 0x24

    if-ge v0, v1, :cond_8e

    .line 241
    const/4 p0, 0x0

    move v0, v10

    .end local v10           #length:I
    .local v0, length:I
    move-object v1, p0

    move-object p0, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_34

    .line 233
    .local v0, nread:I
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v10       #length:I
    .local p0, name:Ljava/lang/String;
    :catch_6b
    move-exception v0

    .line 235
    .local v0, e3:Ljava/io/IOException;
    sget-object v1, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retrieving time zone data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    .line 243
    .end local v0           #e3:Ljava/io/IOException;
    :cond_8e
    const/4 v0, 0x0

    aget-byte v0, v7, v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_aa

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_aa

    const/4 v0, 0x2

    aget-byte v0, v7, v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_aa

    const/4 v0, 0x3

    aget-byte v0, v7, v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_af

    .line 245
    :cond_aa
    const/4 p0, 0x0

    move v0, v10

    .end local v10           #length:I
    .local v0, length:I
    move-object v1, p0

    move-object p0, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_34

    .line 248
    .end local v0           #length:I
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v10       #length:I
    .local p0, name:Ljava/lang/String;
    :cond_af
    const/16 v0, 0x20

    invoke-static {v7, v0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->read4([BI)I

    move-result v4

    .line 249
    .local v4, ntransition:I
    const/16 v0, 0x24

    invoke-static {v7, v0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->read4([BI)I

    move-result v1

    .line 250
    .local v1, ngmtoff:I
    const/16 v8, 0x2c

    .line 252
    .local v8, base:I
    new-array v2, v4, [I

    .line 253
    .local v2, transitions:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c0
    if-ge v0, v4, :cond_ce

    .line 254
    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v8

    invoke-static {v7, v3}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->read4([BI)I

    move-result v3

    aput v3, v2, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .line 255
    :cond_ce
    mul-int/lit8 v0, v4, 0x4

    add-int/2addr v8, v0

    .line 257
    new-array v3, v4, [B

    .line 258
    .end local v0           #i:I
    .local v3, type:[B
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_d4
    if-ge v0, v4, :cond_df

    .line 259
    add-int v5, v8, v0

    aget-byte v5, v7, v5

    aput-byte v5, v3, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_d4

    .line 260
    :cond_df
    add-int/2addr v8, v4

    .line 262
    new-array v4, v1, [I

    .line 263
    .local v4, gmtoff:[I
    new-array v5, v1, [B

    .line 264
    .local v5, isdst:[B
    new-array v6, v1, [B

    .line 265
    .local v6, abbrev:[B
    const/4 v0, 0x0

    :goto_e7
    if-ge v0, v1, :cond_107

    .line 266
    mul-int/lit8 v11, v0, 0x6

    add-int/2addr v11, v8

    invoke-static {v7, v11}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->read4([BI)I

    move-result v11

    aput v11, v4, v0

    .line 267
    mul-int/lit8 v11, v0, 0x6

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, 0x4

    aget-byte v11, v7, v11

    aput-byte v11, v5, v0

    .line 268
    mul-int/lit8 v11, v0, 0x6

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, 0x5

    aget-byte v11, v7, v11

    aput-byte v11, v6, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    .line 271
    :cond_107
    mul-int/lit8 v0, v1, 0x6

    add-int/2addr v8, v0

    .line 273
    new-instance v0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;

    .end local v0           #i:I
    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;-><init>(Ljava/lang/String;[I[B[I[B[B[BI)V

    .end local v1           #ngmtoff:I
    move-object p0, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    move-object v1, v0

    move v0, v10

    .end local v10           #length:I
    .local v0, length:I
    goto/16 :goto_34

    .end local v3           #type:[B
    .end local v4           #gmtoff:[I
    .end local v5           #isdst:[B
    .end local v6           #abbrev:[B
    .end local v7           #data:[B
    .end local v8           #base:I
    .local v0, f:Ljava/io/File;
    .local v1, fis:Ljava/io/FileInputStream;
    .local v2, length:I
    .local p0, name:Ljava/lang/String;
    :cond_115
    move v10, v2

    .end local v2           #length:I
    .restart local v10       #length:I
    move-object v9, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_4f

    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v10           #length:I
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .local v3, length:I
    :cond_119
    move v2, v3

    .end local v3           #length:I
    .restart local v2       #length:I
    goto/16 :goto_41
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-static {v0, v0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->_getAvailableIDs(IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableIDs(I)[Ljava/lang/String;
    .registers 2
    .parameter "rawOffset"

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->_getAvailableIDs(IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault()Ljava/util/TimeZone;
    .registers 5

    .prologue
    .line 313
    sget-object v3, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 314
    :try_start_3
    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->defaultZone:Ljava/util/TimeZone;

    if-eqz v4, :cond_c

    .line 315
    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->defaultZone:Ljava/util/TimeZone;

    monitor-exit v3

    move-object v3, v4

    .line 332
    :goto_b
    return-object v3

    .line 318
    :cond_c
    const/4 v2, 0x0

    .line 319
    .local v2, zoneName:Ljava/lang/String;
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    move-result-object v0

    .line 320
    .local v0, tzGetter:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    if-eqz v0, :cond_17

    .line 321
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getId()Ljava/lang/String;

    move-result-object v2

    .line 323
    :cond_17
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    .line 324
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 330
    .local v1, zone:Ljava/util/TimeZone;
    :goto_27
    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->defaultZone:Ljava/util/TimeZone;

    .line 331
    monitor-exit v3

    move-object v3, v1

    .line 332
    goto :goto_b

    .line 327
    .end local v1           #zone:Ljava/util/TimeZone;
    :cond_2c
    const-string v4, "localtime"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .restart local v1       #zone:Ljava/util/TimeZone;
    goto :goto_27

    .line 331
    .end local v0           #tzGetter:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    .end local v1           #zone:Ljava/util/TimeZone;
    .end local v2           #zoneName:Ljava/lang/String;
    :catchall_33
    move-exception v4

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v4
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const-string v2, "GMT"

    .line 284
    if-eqz p0, :cond_33

    .line 285
    const-string v1, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "UTC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 286
    :cond_15
    new-instance v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;

    invoke-direct {v0, v3}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;-><init>(I)V

    .line 287
    .local v0, tz:Ljava/util/TimeZone;
    invoke-virtual {v0, p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;->setID(Ljava/lang/String;)V

    move-object v1, v0

    .line 307
    .end local v0           #tz:Ljava/util/TimeZone;
    :goto_1e
    return-object v1

    .line 291
    :cond_1f
    const-string v1, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 292
    new-instance v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;

    invoke-static {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->parseNumericZone(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;-><init>(I)V

    goto :goto_1e

    .line 296
    :cond_33
    invoke-static {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 298
    .restart local v0       #tz:Ljava/util/TimeZone;
    if-eqz v0, :cond_3b

    move-object v1, v0

    .line 299
    goto :goto_1e

    .line 305
    :cond_3b
    new-instance v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;

    .end local v0           #tz:Ljava/util/TimeZone;
    invoke-direct {v0, v3}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;-><init>(I)V

    .line 306
    .restart local v0       #tz:Ljava/util/TimeZone;
    const-string v1, "GMT"

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;->setID(Ljava/lang/String;)V

    move-object v1, v0

    .line 307
    goto :goto_1e
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->version:Ljava/lang/String;

    return-object v0
.end method

.method private static parseNumericZone(Ljava/lang/String;)I
    .registers 13
    .parameter "name"

    .prologue
    const/16 v11, 0x39

    const/4 v10, 0x3

    const/16 v9, 0x30

    const/4 v8, 0x0

    .line 347
    if-nez p0, :cond_a

    move v6, v8

    .line 397
    :goto_9
    return v6

    .line 350
    :cond_a
    const-string v6, "GMT"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    move v6, v8

    .line 351
    goto :goto_9

    .line 353
    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v10, :cond_1c

    move v6, v8

    .line 354
    goto :goto_9

    .line 357
    :cond_1c
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_50

    .line 358
    const/4 v4, 0x1

    .line 365
    .local v4, sign:I
    :goto_25
    const/4 v2, 0x0

    .line 366
    .local v2, hour:I
    const/4 v1, 0x0

    .line 367
    .local v1, colon:Z
    const/4 v5, 0x4

    .local v5, where:I
    :goto_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_39

    .line 368
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 370
    .local v0, c:C
    const/16 v6, 0x3a

    if-ne v0, v6, :cond_5c

    .line 371
    add-int/lit8 v5, v5, 0x1

    .line 372
    const/4 v1, 0x1

    .line 382
    .end local v0           #c:C
    :cond_39
    const/4 v3, 0x0

    .line 383
    .local v3, min:I
    :goto_3a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6c

    .line 384
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 386
    .restart local v0       #c:C
    if-lt v0, v9, :cond_6a

    if-gt v0, v11, :cond_6a

    .line 387
    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v6, v0

    sub-int v3, v6, v9

    .line 383
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 359
    .end local v0           #c:C
    .end local v1           #colon:Z
    .end local v2           #hour:I
    .end local v3           #min:I
    .end local v4           #sign:I
    .end local v5           #where:I
    :cond_50
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_5a

    .line 360
    const/4 v4, -0x1

    .restart local v4       #sign:I
    goto :goto_25

    .end local v4           #sign:I
    :cond_5a
    move v6, v8

    .line 362
    goto :goto_9

    .line 376
    .restart local v0       #c:C
    .restart local v1       #colon:Z
    .restart local v2       #hour:I
    .restart local v4       #sign:I
    .restart local v5       #where:I
    :cond_5c
    if-lt v0, v9, :cond_68

    if-gt v0, v11, :cond_68

    .line 377
    mul-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v0

    sub-int v2, v6, v9

    .line 367
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_68
    move v6, v8

    .line 379
    goto :goto_9

    .restart local v3       #min:I
    :cond_6a
    move v6, v8

    .line 389
    goto :goto_9

    .line 392
    .end local v0           #c:C
    :cond_6c
    if-eqz v1, :cond_75

    .line 393
    mul-int/lit8 v6, v2, 0x3c

    add-int/2addr v6, v3

    mul-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x3c

    goto :goto_9

    .line 394
    :cond_75
    const/16 v6, 0x64

    if-lt v2, v6, :cond_84

    .line 395
    div-int/lit8 v6, v2, 0x64

    mul-int/lit8 v6, v6, 0x3c

    rem-int/lit8 v7, v2, 0x64

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x3c

    goto :goto_9

    .line 397
    :cond_84
    mul-int/lit8 v6, v2, 0x3c

    mul-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x3c

    goto :goto_9
.end method

.method private static read4([BI)I
    .registers 4
    .parameter "data"
    .parameter "off"

    .prologue
    .line 277
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method private static readDatabase()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    .line 101
    sget-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->starts:[I

    if-eqz v11, :cond_6

    .line 147
    :goto_5
    return-void

    .line 105
    :cond_6
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->INDEX_FILE_NAME:Ljava/lang/String;

    const-string v12, "r"

    invoke-direct {v1, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v1, indexFile:Ljava/io/RandomAccessFile;
    const/16 v11, 0x28

    new-array v9, v11, [B

    .line 108
    .local v9, nbuf:[B
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x34

    div-long/2addr v11, v13

    long-to-int v10, v11

    .line 111
    .local v10, numEntries:I
    mul-int/lit8 v11, v10, 0x28

    new-array v5, v11, [C

    .line 112
    .local v5, namebuf:[C
    new-array v6, v10, [I

    .line 113
    .local v6, nameend:[I
    const/4 v7, 0x0

    .line 115
    .local v7, nameoff:I
    new-array v11, v10, [I

    sput-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->starts:[I

    .line 116
    new-array v11, v10, [I

    sput-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->lengths:[I

    .line 117
    new-array v11, v10, [I

    sput-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->offsets:[I

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    if-ge v0, v10, :cond_68

    .line 120
    invoke-virtual {v1, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 121
    sget-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->starts:[I

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    aput v12, v11, v0

    .line 122
    sget-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->lengths:[I

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    aput v12, v11, v0

    .line 123
    sget-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->offsets:[I

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    aput v12, v11, v0

    .line 126
    array-length v3, v9

    .line 127
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, j:I
    move v8, v7

    .end local v7           #nameoff:I
    .local v8, nameoff:I
    :goto_4f
    if-ge v2, v3, :cond_55

    .line 128
    aget-byte v11, v9, v2

    if-nez v11, :cond_5b

    .line 134
    :cond_55
    aput v8, v6, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    move v7, v8

    .end local v8           #nameoff:I
    .restart local v7       #nameoff:I
    goto :goto_2f

    .line 131
    .end local v7           #nameoff:I
    .restart local v8       #nameoff:I
    :cond_5b
    add-int/lit8 v7, v8, 0x1

    .end local v8           #nameoff:I
    .restart local v7       #nameoff:I
    aget-byte v11, v9, v2

    and-int/lit16 v11, v11, 0xff

    int-to-char v11, v11

    aput-char v11, v5, v8

    .line 127
    add-int/lit8 v2, v2, 0x1

    move v8, v7

    .end local v7           #nameoff:I
    .restart local v8       #nameoff:I
    goto :goto_4f

    .line 137
    .end local v2           #j:I
    .end local v3           #len:I
    .end local v8           #nameoff:I
    .restart local v7       #nameoff:I
    :cond_68
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v15, v7}, Ljava/lang/String;-><init>([CII)V

    .line 140
    .local v4, name:Ljava/lang/String;
    new-array v11, v10, [Ljava/lang/String;

    sput-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->names:[Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    :goto_72
    if-ge v0, v10, :cond_8a

    .line 142
    sget-object v11, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->names:[Ljava/lang/String;

    if-nez v0, :cond_84

    move v12, v15

    :goto_79
    aget v13, v6, v0

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 142
    :cond_84
    const/4 v12, 0x1

    sub-int v12, v0, v12

    aget v12, v6, v12

    goto :goto_79

    .line 146
    :cond_8a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_5
.end method

.method private static readVersion()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v3, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->VERSION_FILE_NAME:Ljava/lang/String;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v2, versionFile:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v0, v3

    .line 94
    .local v0, len:I
    new-array v1, v0, [B

    .line 95
    .local v1, vbuf:[B
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 96
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v1, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->version:Ljava/lang/String;

    .line 97
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 98
    return-void
.end method

.method public static setDefault(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "zone"

    .prologue
    .line 341
    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->defaultZone:Ljava/util/TimeZone;

    .line 343
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method
