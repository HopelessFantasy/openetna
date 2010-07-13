.class Lcom/android/settings/ManageApplications$AppInfoCache;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoCache"
.end annotation


# static fields
.field private static final DEBUG_CACHE:Z = false

.field private static final DEBUG_CACHE_TIME:Z = false

.field private static final FILE_BUFFER_SIZE:I = 0x400

.field static final FILE_CACHE:Z = true

.field private static final mFileCacheName:Ljava/lang/String; = "ManageAppsInfo.txt"


# instance fields
.field private mAppPropCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/ManageApplications$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .registers 3
    .parameter

    .prologue
    .line 2079
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2085
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/ManageApplications$AppInfoCache;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 2079
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2079
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications$AppInfoCache;->getEntry(Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/ManageApplications$AppInfoCache;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2079
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->getPkgList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 2079
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->loadCache()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/ManageApplications$AppInfoCache;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 2079
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->updateCache()V

    return-void
.end method

.method private getEntry(Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/ManageApplications$AppInfo;

    return-object p0
.end method

.method private getPkgList()Ljava/util/Set;
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
    .line 2096
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private isEmpty()Z
    .registers 2

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private loadCache()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "disableCache"

    .line 2294
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    const-string v4, "ManageAppsInfo.prefs"

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/ManageApplications;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2295
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "disableCache"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2297
    .local v0, disable:Z
    if-eqz v0, :cond_1b

    .line 2298
    const-string v3, "ManageApplications"

    const-string v4, "Cache has been disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :cond_1b
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2303
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "disableCache"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2304
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2306
    if-nez v0, :cond_34

    .line 2307
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->readFromFile()V

    .line 2309
    const-string v3, "disableCache"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2310
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2312
    :cond_34
    return-void
.end method

.method private readFromFile()V
    .registers 22

    .prologue
    .line 2112
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/settings/ManageApplications;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "ManageAppsInfo.txt"

    invoke-direct {v15, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2114
    .local v15, cacheFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_17

    .line 2212
    :cond_16
    :goto_16
    return-void

    .line 2118
    :cond_17
    const/16 v18, 0x0

    .line 2119
    .local v18, fis:Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 2122
    .local v17, err:Z
    :try_start_1b
    new-instance v18, Ljava/io/FileInputStream;

    .end local v18           #fis:Ljava/io/FileInputStream;
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_23} :catch_6e

    .line 2132
    .restart local v18       #fis:Ljava/io/FileInputStream;
    const/16 v5, 0x400

    :try_start_25
    new-array v14, v5, [B

    .line 2133
    .local v14, byteBuff:[B
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 2134
    .local v19, lenBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 2136
    :goto_35
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->available()I

    move-result v5

    if-lez v5, :cond_57

    .line 2137
    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 2139
    const/4 v5, 0x0

    aget-byte v5, v19, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v6, v19, v6

    or-int v12, v5, v6

    .line 2141
    .local v12, buffLen:I
    if-lez v12, :cond_55

    array-length v5, v14
    :try_end_53
    .catchall {:try_start_25 .. :try_end_53} :catchall_17a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_53} :catch_de

    if-le v12, v5, :cond_97

    .line 2142
    :cond_55
    const/16 v17, 0x1

    .line 2195
    .end local v12           #buffLen:I
    :cond_57
    :goto_57
    if-eqz v18, :cond_5c

    .line 2197
    :try_start_59
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_127

    .line 2206
    :cond_5c
    :goto_5c
    if-eqz v17, :cond_16

    .line 2207
    const-string v5, "ManageApplications"

    const-string v6, "Failed to load cache. Not using cache for now."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    goto :goto_16

    .line 2123
    .end local v14           #byteBuff:[B
    .end local v18           #fis:Ljava/io/FileInputStream;
    .end local v19           #lenBytes:[B
    :catch_6e
    move-exception v5

    move-object/from16 v16, v5

    .line 2124
    .local v16, e:Ljava/io/FileNotFoundException;
    const-string v5, "ManageApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error opening file for read operation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2148
    .end local v16           #e:Ljava/io/FileNotFoundException;
    .restart local v12       #buffLen:I
    .restart local v14       #byteBuff:[B
    .restart local v18       #fis:Ljava/io/FileInputStream;
    .restart local v19       #lenBytes:[B
    :cond_97
    const/4 v5, 0x0

    :try_start_98
    move-object/from16 v0, v18

    move-object v1, v14

    move v2, v5

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 2150
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    .line 2159
    .local v13, buffStr:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2161
    .local v20, substrs:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0
    :try_end_af
    .catchall {:try_start_98 .. :try_end_af} :catchall_17a
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_af} :catch_de

    const/4 v6, 0x4

    if-ge v5, v6, :cond_b5

    .line 2163
    const/16 v17, 0x1

    .line 2165
    goto :goto_57

    .line 2168
    :cond_b5
    const-wide/16 v9, -0x1

    .line 2169
    .local v9, size:J
    const/4 v7, -0x1

    .line 2172
    .local v7, idx:I
    const/4 v5, 0x1

    :try_start_b9
    aget-object v5, v20, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_be
    .catchall {:try_start_b9 .. :try_end_be} :catchall_17a
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_be} :catch_120
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_be} :catch_de

    move-result-wide v9

    .line 2185
    :try_start_bf
    new-instance v4, Lcom/android/settings/ManageApplications$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v20, v6

    const/4 v8, 0x3

    aget-object v8, v20, v8

    const/4 v11, 0x2

    aget-object v11, v20, v11

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/ManageApplications$AppInfo;-><init>(Lcom/android/settings/ManageApplications;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 2187
    .local v4, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v5, v0

    iget-object v6, v4, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dc
    .catchall {:try_start_bf .. :try_end_dc} :catchall_17a
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_dc} :catch_de

    goto/16 :goto_35

    .line 2189
    .end local v4           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v7           #idx:I
    .end local v9           #size:J
    .end local v12           #buffLen:I
    .end local v13           #buffStr:Ljava/lang/String;
    .end local v14           #byteBuff:[B
    .end local v19           #lenBytes:[B
    .end local v20           #substrs:[Ljava/lang/String;
    :catch_de
    move-exception v5

    move-object/from16 v16, v5

    .line 2190
    .local v16, e:Ljava/io/IOException;
    :try_start_e1
    const-string v5, "ManageApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed reading from file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catchall {:try_start_e1 .. :try_end_106} :catchall_17a

    .line 2193
    const/16 v17, 0x1

    .line 2195
    if-eqz v18, :cond_10d

    .line 2197
    :try_start_10a
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_151

    .line 2206
    :cond_10d
    :goto_10d
    if-eqz v17, :cond_16

    .line 2207
    const-string v5, "ManageApplications"

    const-string v6, "Failed to load cache. Not using cache for now."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    goto/16 :goto_16

    .line 2173
    .end local v16           #e:Ljava/io/IOException;
    .restart local v7       #idx:I
    .restart local v9       #size:J
    .restart local v12       #buffLen:I
    .restart local v13       #buffStr:Ljava/lang/String;
    .restart local v14       #byteBuff:[B
    .restart local v19       #lenBytes:[B
    .restart local v20       #substrs:[Ljava/lang/String;
    :catch_120
    move-exception v5

    move-object/from16 v16, v5

    .line 2174
    .local v16, e:Ljava/lang/NumberFormatException;
    const/16 v17, 0x1

    .line 2176
    goto/16 :goto_57

    .line 2198
    .end local v7           #idx:I
    .end local v9           #size:J
    .end local v12           #buffLen:I
    .end local v13           #buffStr:Ljava/lang/String;
    .end local v16           #e:Ljava/lang/NumberFormatException;
    .end local v20           #substrs:[Ljava/lang/String;
    :catch_127
    move-exception v16

    .line 2199
    .local v16, e:Ljava/io/IOException;
    const-string v5, "ManageApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const/16 v17, 0x1

    goto/16 :goto_5c

    .line 2198
    .end local v14           #byteBuff:[B
    .end local v19           #lenBytes:[B
    :catch_151
    move-exception v16

    .line 2199
    const-string v5, "ManageApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const/16 v17, 0x1

    goto :goto_10d

    .line 2195
    .end local v16           #e:Ljava/io/IOException;
    :catchall_17a
    move-exception v5

    if-eqz v18, :cond_180

    .line 2197
    :try_start_17d
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_192

    .line 2206
    :cond_180
    :goto_180
    if-eqz v17, :cond_191

    .line 2207
    const-string v6, "ManageApplications"

    const-string v7, "Failed to load cache. Not using cache for now."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    :cond_191
    throw v5

    .line 2198
    :catch_192
    move-exception v16

    .line 2199
    .restart local v16       #e:Ljava/io/IOException;
    const-string v6, "ManageApplications"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const/16 v17, 0x1

    goto :goto_180
.end method

.method private updateCache()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const-string v6, "disableCache"

    .line 2315
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    const-string v4, "ManageAppsInfo.prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/ManageApplications;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2316
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2317
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "disableCache"

    const/4 v3, 0x1

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2321
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->writeToFile()Z

    move-result v2

    .line 2322
    .local v2, writeStatus:Z
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2324
    if-eqz v2, :cond_2b

    .line 2326
    const-string v3, "disableCache"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2330
    :cond_2b
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/settings/ManageApplications$AppInfo;)V
    .registers 4
    .parameter "aInfo"

    .prologue
    .line 2100
    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 2101
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    :cond_d
    return-void
.end method

.method public removeEntry(Ljava/lang/String;)V
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 2106
    if-eqz p1, :cond_7

    .line 2107
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    :cond_7
    return-void
.end method

.method writeToFile()Z
    .registers 22

    .prologue
    .line 2215
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/ManageApplications;->getFilesDir()Ljava/io/File;

    move-result-object v18

    const-string v19, "ManageAppsInfo.txt"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2216
    .local v7, cacheFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 2219
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 2220
    .local v16, opStartTime:J
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1dc
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_20} :catch_17b

    .line 2222
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 2223
    .local v13, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v15, v0

    .line 2225
    .local v15, lenBytes:[B
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_145

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2226
    .local v12, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/ManageApplications$AppInfo;

    .line 2227
    .local v4, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v0, v4

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2228
    .local v5, buff:Ljava/lang/StringBuilder;
    const-string v18, ","

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    move-object v0, v4

    iget-wide v0, v0, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    move-wide/from16 v18, v0

    move-object v0, v5

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2230
    const-string v18, ","

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    move-object v0, v4

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2232
    const-string v18, ","

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    move-object v0, v4

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_96
    .catchall {:try_start_20 .. :try_end_96} :catchall_210
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_96} :catch_213

    .line 2242
    :try_start_96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 2243
    .local v6, byteBuff:[B
    array-length v14, v6

    .line 2245
    .local v14, len:I
    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x400

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_ad

    .line 2247
    const/16 v14, 0x400

    .line 2251
    :cond_ad
    const/16 v18, 0x1

    move v0, v14

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 2252
    const/16 v18, 0x0

    const v19, 0xff00

    and-int v19, v19, v14

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 2253
    const/16 v18, 0x0

    const/16 v19, 0x2

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2254
    const/16 v18, 0x0

    move-object v0, v10

    move-object v1, v6

    move/from16 v2, v18

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_e2
    .catchall {:try_start_96 .. :try_end_e2} :catchall_210
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_e2} :catch_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_e2} :catch_213

    goto/16 :goto_35

    .line 2255
    .end local v6           #byteBuff:[B
    .end local v14           #len:I
    :catch_e4
    move-exception v18

    move-object/from16 v8, v18

    .line 2256
    .local v8, e:Ljava/io/IOException;
    :try_start_e7
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to write to file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_e7 .. :try_end_10f} :catchall_210
    .catch Ljava/io/FileNotFoundException; {:try_start_e7 .. :try_end_10f} :catch_213

    .line 2260
    const/16 v18, 0x0

    .line 2278
    if-eqz v10, :cond_116

    .line 2280
    :try_start_113
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_118

    :cond_116
    move-object v9, v10

    .line 2286
    .end local v4           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v5           #buff:Ljava/lang/StringBuilder;
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15           #lenBytes:[B
    .end local v16           #opStartTime:J
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :cond_117
    :goto_117
    return v18

    .line 2281
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .restart local v5       #buff:Ljava/lang/StringBuilder;
    .restart local v8       #e:Ljava/io/IOException;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v13       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15       #lenBytes:[B
    .restart local v16       #opStartTime:J
    :catch_118
    move-exception v8

    .line 2282
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed closing file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const/16 v18, 0x0

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_117

    .line 2270
    .end local v4           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v5           #buff:Ljava/lang/StringBuilder;
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v12           #key:Ljava/lang/String;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :cond_145
    const/16 v18, 0x1

    .line 2278
    if-eqz v10, :cond_14c

    .line 2280
    :try_start_149
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_14e

    :cond_14c
    move-object v9, v10

    .line 2286
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_117

    .line 2281
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_14e
    move-exception v8

    .line 2282
    .restart local v8       #e:Ljava/io/IOException;
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed closing file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const/16 v18, 0x0

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_117

    .line 2271
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15           #lenBytes:[B
    .end local v16           #opStartTime:J
    :catch_17b
    move-exception v18

    move-object/from16 v8, v18

    .line 2272
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_17e
    :try_start_17e
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error opening file for write operation : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a6
    .catchall {:try_start_17e .. :try_end_1a6} :catchall_1dc

    .line 2276
    const/16 v18, 0x0

    .line 2278
    if-eqz v9, :cond_117

    .line 2280
    :try_start_1aa
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1ad} :catch_1af

    goto/16 :goto_117

    .line 2281
    :catch_1af
    move-exception v8

    .line 2282
    .local v8, e:Ljava/io/IOException;
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed closing file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const/16 v18, 0x0

    goto/16 :goto_117

    .line 2278
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1dc
    move-exception v18

    :goto_1dd
    if-eqz v9, :cond_1e2

    .line 2280
    :try_start_1df
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e2} :catch_1e3

    .line 2286
    :cond_1e2
    throw v18

    .line 2281
    :catch_1e3
    move-exception v8

    .line 2282
    .restart local v8       #e:Ljava/io/IOException;
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed closing file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const/16 v18, 0x0

    goto/16 :goto_117

    .line 2278
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #opStartTime:J
    :catchall_210
    move-exception v18

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_1dd

    .line 2271
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_213
    move-exception v18

    move-object/from16 v8, v18

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_17e
.end method
