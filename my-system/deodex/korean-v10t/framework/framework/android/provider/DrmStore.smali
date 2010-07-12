.class public final Landroid/provider/DrmStore;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DrmStore$Audio;,
        Landroid/provider/DrmStore$Images;,
        Landroid/provider/DrmStore$Columns;
    }
.end annotation


# static fields
.field private static final ACCESS_DRM_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM"

.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field private static final TAG:Ljava/lang/String; = "DrmStore"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .registers 15
    .parameter "cr"
    .parameter "file"
    .parameter "title"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 105
    .local v4, os:Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 108
    .local v5, result:Landroid/content/Intent;
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_11b

    .line 109
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_8
    new-instance v0, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "application/vnd.oma.drm.message"

    invoke-direct {v0, v1, v2, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 111
    .local v0, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v0}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, mimeType:Ljava/lang/String;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v2

    .line 114
    .local v2, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v2, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v2

    .line 115
    .local v2, rights:Landroid/drm/mobile1/DrmRights;
    invoke-virtual {v0, v2}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v2

    .line 116
    .local v2, stream:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    .end local v0           #content:Landroid/drm/mobile1/DrmRawContent;
    int-to-long v6, v0

    .line 118
    .local v6, size:J
    const/4 v0, 0x0

    .line 119
    .local v0, contentUri:Landroid/net/Uri;
    const-string v8, "audio/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 120
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 127
    :goto_34
    if-eqz v0, :cond_128

    .line 128
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 130
    .local v8, values:Landroid/content/ContentValues;
    if-nez p2, :cond_4f

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 132
    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .end local p1
    move-result p1

    .line 133
    .local p1, lastDot:I
    if-lez p1, :cond_4f

    .line 134
    const/4 v9, 0x0

    invoke-virtual {p2, v9, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 137
    .end local p1           #lastDot:I
    :cond_4f
    const-string p1, "title"

    invoke-virtual {v8, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string p1, "_size"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .end local v6           #size:J
    invoke-virtual {v8, p1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    const-string p1, "mime_type"

    invoke-virtual {v8, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 142
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_128

    .line 143
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_6b
    .catchall {:try_start_8 .. :try_end_6b} :catchall_ff
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6b} :catch_b9

    move-result-object v0

    .line 145
    .end local v4           #os:Ljava/io/OutputStream;
    .local v0, os:Ljava/io/OutputStream;
    const/16 p0, 0x3e8

    :try_start_6e
    new-array p0, p0, [B

    .line 148
    .local p0, buffer:[B
    :goto_70
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .local p1, count:I
    const/4 v4, -0x1

    if-eq p1, v4, :cond_be

    .line 149
    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_106
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7b} :catch_7c

    goto :goto_70

    .line 156
    .end local p0           #buffer:[B
    .end local p1           #count:I
    :catch_7c
    move-exception p0

    move-object p1, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .local p1, fis:Ljava/io/FileInputStream;
    move-object v1, v5

    .line 157
    .end local v2           #stream:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #result:Landroid/content/Intent;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    .local v1, result:Landroid/content/Intent;
    .local p0, e:Ljava/lang/Exception;
    :goto_7f
    :try_start_7f
    const-string v2, "DrmStore"

    const-string v3, "pushing file failed"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_114

    .line 160
    if-eqz p1, :cond_8b

    .line 161
    :try_start_88
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 162
    :cond_8b
    if-eqz v0, :cond_90

    .line 163
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_90} :catch_ed

    .end local p0           #e:Ljava/lang/Exception;
    :cond_90
    :goto_90
    move-object p0, p1

    .end local p1           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    move-object p1, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .local p1, os:Ljava/io/OutputStream;
    move-object v0, v1

    .line 169
    .end local v1           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    :goto_93
    return-object v0

    .line 121
    .local v0, contentUri:Landroid/net/Uri;
    .local v1, fis:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    .restart local v3       #mimeType:Ljava/lang/String;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #result:Landroid/content/Intent;
    .local v6, size:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, file:Ljava/io/File;
    :cond_94
    :try_start_94
    const-string v8, "image/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 122
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_34

    .line 124
    :cond_9f
    const-string v8, "DrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unsupported mime type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_94 .. :try_end_b7} :catchall_ff
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b7} :catch_b9

    goto/16 :goto_34

    .line 156
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v2           #stream:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v6           #size:J
    .end local p1           #file:Ljava/io/File;
    :catch_b9
    move-exception p0

    move-object v0, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .local v0, os:Ljava/io/OutputStream;
    move-object p1, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .local p1, fis:Ljava/io/FileInputStream;
    move-object v1, v5

    .end local v5           #result:Landroid/content/Intent;
    .local v1, result:Landroid/content/Intent;
    goto :goto_7f

    .line 151
    .local v1, fis:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    .restart local v3       #mimeType:Ljava/lang/String;
    .restart local v5       #result:Landroid/content/Intent;
    .local v6, uri:Landroid/net/Uri;
    .restart local v8       #values:Landroid/content/ContentValues;
    .local p0, buffer:[B
    .local p1, count:I
    :cond_be
    :try_start_be
    new-instance p0, Landroid/content/Intent;

    .end local p0           #buffer:[B
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_106
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c3} :catch_7c

    .line 152
    .end local v5           #result:Landroid/content/Intent;
    .local p0, result:Landroid/content/Intent;
    :try_start_c3
    invoke-virtual {p0, v6, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_10d
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_121

    move-object p1, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .local p1, os:Ljava/io/OutputStream;
    move-object v0, p0

    .line 160
    .end local v6           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    .end local p0           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    :goto_c8
    if-eqz v1, :cond_cd

    .line 161
    :try_start_ca
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 162
    :cond_cd
    if-eqz p1, :cond_d2

    .line 163
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d2} :catch_f6

    .end local v2           #stream:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_d2
    :goto_d2
    move-object p0, v1

    .line 167
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_93

    .line 159
    .local v0, fis:Ljava/io/FileInputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #result:Landroid/content/Intent;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, file:Ljava/io/File;
    :catchall_d4
    move-exception p0

    move-object v1, p0

    move-object p1, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .local p1, os:Ljava/io/OutputStream;
    move-object p0, v0

    .end local v0           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    move-object v0, v5

    .line 160
    .end local v5           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    :goto_d9
    if-eqz p0, :cond_de

    .line 161
    :try_start_db
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 162
    :cond_de
    if-eqz p1, :cond_e3

    .line 163
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e3} :catch_e4

    .line 159
    .end local p0           #fis:Ljava/io/FileInputStream;
    .end local p1           #os:Ljava/io/OutputStream;
    .end local p2
    :cond_e3
    :goto_e3
    throw v1

    .line 164
    .restart local p0       #fis:Ljava/io/FileInputStream;
    .restart local p1       #os:Ljava/io/OutputStream;
    .restart local p2
    :catch_e4
    move-exception p0

    .line 165
    .local p0, e:Ljava/io/IOException;
    const-string p1, "DrmStore"

    .end local p1           #os:Ljava/io/OutputStream;
    const-string p2, "IOException in DrmTest.onCreate()"

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e3

    .line 164
    .local v0, os:Ljava/io/OutputStream;
    .local v1, result:Landroid/content/Intent;
    .local p0, e:Ljava/lang/Exception;
    .local p1, fis:Ljava/io/FileInputStream;
    .restart local p2
    :catch_ed
    move-exception p0

    .line 165
    .local p0, e:Ljava/io/IOException;
    const-string v2, "DrmStore"

    const-string v3, "IOException in DrmTest.onCreate()"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90

    .line 164
    .end local p0           #e:Ljava/io/IOException;
    .local v0, result:Landroid/content/Intent;
    .local v1, fis:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    .restart local v3       #mimeType:Ljava/lang/String;
    .local p1, os:Ljava/io/OutputStream;
    :catch_f6
    move-exception p0

    .line 165
    .restart local p0       #e:Ljava/io/IOException;
    const-string v2, "DrmStore"

    .end local v2           #stream:Ljava/io/InputStream;
    const-string v3, "IOException in DrmTest.onCreate()"

    .end local v3           #mimeType:Ljava/lang/String;
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d2

    .line 159
    .end local v0           #result:Landroid/content/Intent;
    .end local p1           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #result:Landroid/content/Intent;
    .local p0, cr:Landroid/content/ContentResolver;
    :catchall_ff
    move-exception p0

    move-object v0, v5

    .end local v5           #result:Landroid/content/Intent;
    .restart local v0       #result:Landroid/content/Intent;
    move-object p1, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local p1       #os:Ljava/io/OutputStream;
    move-object v11, p0

    move-object p0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    move-object v1, v11

    goto :goto_d9

    .end local p0           #fis:Ljava/io/FileInputStream;
    .end local p1           #os:Ljava/io/OutputStream;
    .local v0, os:Ljava/io/OutputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    .restart local v3       #mimeType:Ljava/lang/String;
    .restart local v5       #result:Landroid/content/Intent;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v8       #values:Landroid/content/ContentValues;
    :catchall_106
    move-exception p0

    move-object p1, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .restart local p1       #os:Ljava/io/OutputStream;
    move-object v0, v5

    .end local v5           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    move-object v11, p0

    move-object p0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local p0       #fis:Ljava/io/FileInputStream;
    move-object v1, v11

    goto :goto_d9

    .local v0, os:Ljava/io/OutputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .local p0, result:Landroid/content/Intent;
    .local p1, count:I
    :catchall_10d
    move-exception p1

    move-object v11, p1

    move-object p1, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .local p1, os:Ljava/io/OutputStream;
    move-object v0, p0

    .end local p0           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    move-object p0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    move-object v1, v11

    goto :goto_d9

    .end local v2           #stream:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    .local v0, os:Ljava/io/OutputStream;
    .local v1, result:Landroid/content/Intent;
    .local p0, e:Ljava/lang/Exception;
    .local p1, fis:Ljava/io/FileInputStream;
    :catchall_114
    move-exception p0

    move-object v11, p0

    move-object p0, p1

    .end local p1           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    move-object p1, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .local p1, os:Ljava/io/OutputStream;
    move-object v0, v1

    .end local v1           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    move-object v1, v11

    goto :goto_d9

    .line 156
    .local v0, fis:Ljava/io/FileInputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #result:Landroid/content/Intent;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, file:Ljava/io/File;
    :catch_11b
    move-exception p0

    move-object v1, v5

    .end local v5           #result:Landroid/content/Intent;
    .restart local v1       #result:Landroid/content/Intent;
    move-object p1, v0

    .end local v0           #fis:Ljava/io/FileInputStream;
    .local p1, fis:Ljava/io/FileInputStream;
    move-object v0, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .local v0, os:Ljava/io/OutputStream;
    goto/16 :goto_7f

    .local v1, fis:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    .restart local v3       #mimeType:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v8       #values:Landroid/content/ContentValues;
    .local p0, result:Landroid/content/Intent;
    .local p1, count:I
    :catch_121
    move-exception p1

    move-object v11, p1

    move-object p1, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .local p1, fis:Ljava/io/FileInputStream;
    move-object v1, p0

    .end local p0           #result:Landroid/content/Intent;
    .local v1, result:Landroid/content/Intent;
    move-object p0, v11

    goto/16 :goto_7f

    .end local v6           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    .end local p1           #fis:Ljava/io/FileInputStream;
    .local v0, contentUri:Landroid/net/Uri;
    .local v1, fis:Ljava/io/FileInputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #result:Landroid/content/Intent;
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_128
    move-object v0, v5

    .end local v5           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    move-object p1, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .local p1, os:Ljava/io/OutputStream;
    goto :goto_c8
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 179
    const-string v0, "android.permission.ACCESS_DRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 181
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_10
    return-void
.end method
