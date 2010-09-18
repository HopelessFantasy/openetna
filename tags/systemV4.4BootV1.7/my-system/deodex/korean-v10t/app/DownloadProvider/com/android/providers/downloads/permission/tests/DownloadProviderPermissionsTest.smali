.class public Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;
.super Landroid/test/AndroidTestCase;
.source "DownloadProviderPermissionsTest.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 43
    invoke-virtual {p0}, Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    return-void
.end method

.method public testAccessCacheFilesystem()V
    .registers 5
    .annotation runtime Landroid/test/suitebuilder/annotation/MediumTest;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    const-string v0, "/cache/this-should-not-exist.txt"

    .line 55
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, strm:Ljava/io/FileOutputStream;
    const-string v2, "Oops!"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 57
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 58
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Was able to create and write to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;->fail(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_2c} :catch_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 65
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #strm:Ljava/io/FileOutputStream;
    :goto_2c
    return-void

    .line 62
    :catch_2d
    move-exception v2

    goto :goto_2c

    .line 60
    :catch_2f
    move-exception v2

    goto :goto_2c
.end method

.method public testReadDownloadProvider()V
    .registers 7
    .annotation runtime Landroid/test/suitebuilder/annotation/MediumTest;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 76
    const-string v0, "read from provider did not throw SecurityException as expected."

    invoke-static {v0}, Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;->fail(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_10} :catch_11

    .line 80
    :goto_10
    return-void

    .line 77
    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public testStartDownloadService()V
    .registers 4
    .annotation runtime Landroid/test/suitebuilder/annotation/MediumTest;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, downloadServiceIntent:Landroid/content/Intent;
    const-string v1, "com.android.providers.downloads"

    const-string v2, "com.android.providers.downloads.DownloadService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    const-string v1, "starting download service did not throw SecurityException as expected."

    invoke-static {v1}, Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_18} :catch_19

    .line 115
    .end local v0           #downloadServiceIntent:Landroid/content/Intent;
    :goto_18
    return-void

    .line 112
    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method public testWriteDownloadProvider()V
    .registers 4
    .annotation runtime Landroid/test/suitebuilder/annotation/MediumTest;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "destination"

    const-string v2, "foo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 93
    const-string v1, "write to provider did not throw SecurityException as expected."

    invoke-static {v1}, Lcom/android/providers/downloads/permission/tests/DownloadProviderPermissionsTest;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_18} :catch_19

    .line 97
    .end local v0           #values:Landroid/content/ContentValues;
    :goto_18
    return-void

    .line 94
    :catch_19
    move-exception v1

    goto :goto_18
.end method
