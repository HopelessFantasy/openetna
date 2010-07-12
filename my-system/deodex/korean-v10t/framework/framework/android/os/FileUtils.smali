.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$FileStatus;
    }
.end annotation


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, result:Z
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_13

    .line 102
    .local v1, in:Ljava/io/InputStream;
    :try_start_6
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    move-result v2

    .line 104
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 109
    .end local v1           #in:Ljava/io/InputStream;
    :goto_d
    return v2

    .line 104
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_e
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_13

    .line 106
    .end local v1           #in:Ljava/io/InputStream;
    :catch_13
    move-exception v3

    move-object v0, v3

    .line 107
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 8
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v5, 0x0

    .line 118
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1a

    .line 120
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x1000

    :try_start_8
    new-array v0, v4, [B

    .line 122
    .local v0, buffer:[B
    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_1e

    .line 123
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_a

    .line 126
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_15
    move-exception v4

    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 129
    .end local v3           #out:Ljava/io/OutputStream;
    :catch_1a
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    move v4, v5

    .line 130
    .end local v2           #e:Ljava/io/IOException;
    :goto_1d
    return v4

    .line 126
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_1e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_1a

    .line 128
    const/4 v4, 0x1

    goto :goto_1d
.end method

.method public static native getFatVolumeId(Ljava/lang/String;)I
.end method

.method public static native getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z
.end method

.method public static native getPermissions(Ljava/lang/String;[I)I
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 142
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "file"
    .parameter "max"
    .parameter "ellipsis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, ""

    .line 154
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 156
    .local v2, input:Ljava/io/InputStream;
    if-lez p1, :cond_4d

    .line 157
    add-int/lit8 v8, p1, 0x1

    :try_start_b
    new-array v1, v8, [B

    .line 158
    .local v1, data:[B
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 159
    .local v5, length:I
    if-gtz v5, :cond_1a

    const-string v8, ""
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_d1

    .line 194
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    move-object v8, v9

    .end local v5           #length:I
    :goto_19
    return-object v8

    .line 160
    .restart local v5       #length:I
    :cond_1a
    if-gt v5, p1, :cond_26

    :try_start_1c
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_d1

    .line 194
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_19

    .line 161
    :cond_26
    if-nez p2, :cond_32

    :try_start_28
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_d1

    .line 194
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_19

    .line 162
    :cond_32
    :try_start_32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_d1

    move-result-object v8

    .line 194
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_19

    .line 163
    .end local v1           #data:[B
    .end local v5           #length:I
    :cond_4d
    if-gez p1, :cond_b2

    .line 165
    const/4 v6, 0x0

    .line 166
    .local v6, rolled:Z
    const/4 v3, 0x0

    .local v3, last:[B
    const/4 v1, 0x0

    .line 168
    .restart local v1       #data:[B
    :cond_52
    if-eqz v3, :cond_55

    const/4 v6, 0x1

    .line 169
    :cond_55
    move-object v7, v3

    .local v7, tmp:[B
    move-object v3, v1

    move-object v1, v7

    .line 170
    if-nez v1, :cond_5d

    neg-int v8, p1

    :try_start_5b
    new-array v1, v8, [B

    .line 171
    :cond_5d
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 172
    .local v4, len:I
    array-length v8, v1

    if-eq v4, v8, :cond_52

    .line 174
    if-nez v3, :cond_6f

    if-gtz v4, :cond_6f

    const-string v8, ""
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_d1

    .line 194
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    move-object v8, v9

    goto :goto_19

    .line 175
    :cond_6f
    if-nez v3, :cond_7b

    :try_start_71
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_d1

    .line 194
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_19

    .line 176
    :cond_7b
    if-lez v4, :cond_8a

    .line 177
    const/4 v6, 0x1

    .line 178
    const/4 v8, 0x0

    :try_start_7f
    array-length v9, v3

    sub-int/2addr v9, v4

    invoke-static {v3, v4, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    const/4 v8, 0x0

    array-length v9, v3

    sub-int/2addr v9, v4

    invoke-static {v1, v8, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_8a
    if-eqz p2, :cond_8e

    if-nez v6, :cond_97

    :cond_8e
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_93
    .catchall {:try_start_7f .. :try_end_93} :catchall_d1

    .line 194
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_19

    .line 182
    :cond_97
    :try_start_97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ac
    .catchall {:try_start_97 .. :try_end_ac} :catchall_d1

    move-result-object v8

    .line 194
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_19

    .line 184
    .end local v1           #data:[B
    .end local v3           #last:[B
    .end local v4           #len:I
    .end local v6           #rolled:Z
    .end local v7           #tmp:[B
    :cond_b2
    :try_start_b2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    .local v0, contents:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 188
    .restart local v1       #data:[B
    :cond_bb
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 189
    .restart local v4       #len:I
    if-lez v4, :cond_c5

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 190
    :cond_c5
    array-length v8, v1

    if-eq v4, v8, :cond_bb

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_cb
    .catchall {:try_start_b2 .. :try_end_cb} :catchall_d1

    move-result-object v8

    .line 194
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_19

    .end local v0           #contents:Ljava/io/ByteArrayOutputStream;
    .end local v1           #data:[B
    .end local v4           #len:I
    :catchall_d1
    move-exception v8

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v8
.end method

.method public static native setPermissions(Ljava/lang/String;III)I
.end method
