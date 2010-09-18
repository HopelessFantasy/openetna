.class Landroid/webkit/GearsPermissionsManager;
.super Ljava/lang/Object;
.source "GearsPermissionsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;
    }
.end annotation


# static fields
.field private static final BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.android.browser"

.field static final DEBUG:Z = false

.field private static final GEARS_ALLOW_LOCATION_ACCESS:I = 0x1

.field private static final GEARS_DATABASE_DIR:Ljava/lang/String; = "gears"

.field private static final GEARS_DATABASE_FILE:Ljava/lang/String; = "permissions.db"

.field private static final GEARS_LOCATION_ACCESS_TABLE_NAME:Ljava/lang/String; = "LocationAccess"

.field private static final GEARS_SCHEMA_VERSION_TABLE_NAME:Ljava/lang/String; = "VersionInfo"

.field private static final GEARS_STORAGE_ACCESS_TABLE_NAME:Ljava/lang/String; = "Access"

.field private static final LAST_KNOWN_LOCATION_SETTING:Ljava/lang/String; = "lastKnownLocationSystemSetting"

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final LOGV_ENABLED:Z

.field private static sGearsWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field private mGearsPath:Ljava/lang/String;

.field private mSettingsObserver:Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/webkit/GearsPermissionsManager;->sGearsWhiteList:Ljava/util/HashSet;

    .line 74
    sget-object v0, Landroid/webkit/GearsPermissionsManager;->sGearsWhiteList:Ljava/util/HashSet;

    const-string v1, "http://www.google.com"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Landroid/webkit/GearsPermissionsManager;->sGearsWhiteList:Ljava/util/HashSet;

    const-string v1, "http://www.google.co.uk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "gearsPath"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/webkit/GearsPermissionsManager;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Landroid/webkit/GearsPermissionsManager;->mGearsPath:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/GearsPermissionsManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/webkit/GearsPermissionsManager;->checkGearsPermissions()V

    return-void
.end method

.method private checkGearsPermissions()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 101
    iget-object v1, p0, Landroid/webkit/GearsPermissionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, setting:I
    if-eq v0, v3, :cond_18

    invoke-direct {p0, v0}, Landroid/webkit/GearsPermissionsManager;->locationSystemSettingChanged(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 105
    invoke-direct {p0, v0}, Landroid/webkit/GearsPermissionsManager;->setGearsPermissionForGoogleDomains(I)V

    .line 107
    :cond_18
    return-void
.end method

.method private locationSystemSettingChanged(I)Z
    .registers 7
    .parameter "newSetting"

    .prologue
    const-string v4, "lastKnownLocationSystemSetting"

    .line 110
    iget-object v3, p0, Landroid/webkit/GearsPermissionsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 112
    .local v2, prefs:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 113
    .local v1, oldSetting:I
    const-string v3, "lastKnownLocationSystemSetting"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 114
    if-ne v1, p1, :cond_13

    .line 115
    const/4 v3, 0x0

    .line 120
    :goto_12
    return v3

    .line 117
    :cond_13
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "lastKnownLocationSystemSetting"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    const/4 v3, 0x1

    goto :goto_12
.end method

.method private setGearsPermissionForGoogleDomains(I)V
    .registers 19
    .parameter "systemPermission"

    .prologue
    .line 131
    const/4 v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_19

    const/4 v13, 0x1

    move v2, v13

    .line 134
    .local v2, addToGearsLocationTable:Z
    :goto_8
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/GearsPermissionsManager;->mGearsPath:Ljava/lang/String;

    move-object v14, v0

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 135
    .local v4, file:Ljava/io/File;
    if-nez v4, :cond_1c

    .line 228
    :goto_18
    return-void

    .line 131
    .end local v2           #addToGearsLocationTable:Z
    .end local v4           #file:Ljava/io/File;
    :cond_19
    const/4 v13, 0x0

    move v2, v13

    goto :goto_8

    .line 139
    .restart local v2       #addToGearsLocationTable:Z
    .restart local v4       #file:Ljava/io/File;
    :cond_1c
    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "gears"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "permissions.db"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .end local v4           #file:Ljava/io/File;
    .local v5, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 143
    .local v7, needToCreateTables:Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_59

    .line 144
    const/4 v7, 0x1

    .line 147
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_59
    if-eqz v7, :cond_5f

    if-nez v2, :cond_5f

    move-object v4, v5

    .line 154
    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto :goto_18

    .line 159
    .end local v4           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    :cond_5f
    const/4 v13, 0x0

    :try_start_60
    invoke-static {v5, v13}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_60 .. :try_end_63} :catch_dc

    move-result-object v9

    .line 169
    .local v9, permissions:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 171
    if-eqz v7, :cond_a0

    .line 176
    :try_start_69
    const-string v13, "CREATE TABLE IF NOT EXISTS Access (Name TEXT UNIQUE, Value)"

    invoke-virtual {v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 180
    .local v11, statement:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 182
    const-string v13, "CREATE TABLE IF NOT EXISTS LocationAccess (Name TEXT UNIQUE, Value)"

    invoke-virtual {v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 186
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 188
    const-string v13, "CREATE TABLE IF NOT EXISTS VersionInfo (Name TEXT UNIQUE, Value)"

    invoke-virtual {v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 192
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 194
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v10, schema:Landroid/content/ContentValues;
    const-string v13, "Name"

    const-string v14, "Version"

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v13, "Value"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v13, "VersionInfo"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 201
    .end local v10           #schema:Landroid/content/ContentValues;
    .end local v11           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_a0
    if-eqz v2, :cond_e0

    .line 202
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v8, permissionValues:Landroid/content/ContentValues;
    sget-object v13, Landroid/webkit/GearsPermissionsManager;->sGearsWhiteList:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_ad
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_109

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 205
    .local v12, url:Ljava/lang/String;
    const-string v13, "Name"

    invoke-virtual {v8, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v13, "Value"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v13, "LocationAccess"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14, v8}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 209
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V
    :try_end_d1
    .catchall {:try_start_69 .. :try_end_d1} :catchall_101
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_d1} :catch_d2

    goto :goto_ad

    .line 219
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #permissionValues:Landroid/content/ContentValues;
    .end local v12           #url:Ljava/lang/String;
    :catch_d2
    move-exception v13

    .line 225
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 226
    :goto_d6
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v4, v5

    .line 228
    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto/16 :goto_18

    .line 160
    .end local v4           #file:Ljava/io/File;
    .end local v9           #permissions:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #file:Ljava/io/File;
    :catch_dc
    move-exception v3

    .local v3, e:Landroid/database/sqlite/SQLiteException;
    move-object v4, v5

    .line 166
    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto/16 :goto_18

    .line 212
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v9       #permissions:Landroid/database/sqlite/SQLiteDatabase;
    :cond_e0
    :try_start_e0
    sget-object v13, Landroid/webkit/GearsPermissionsManager;->sGearsWhiteList:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_e6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_109

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 213
    .restart local v12       #url:Ljava/lang/String;
    const-string v13, "LocationAccess"

    const-string v14, "Name=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-virtual {v9, v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_100
    .catchall {:try_start_e0 .. :try_end_100} :catchall_101
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e0 .. :try_end_100} :catch_d2

    goto :goto_e6

    .line 225
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #url:Ljava/lang/String;
    :catchall_101
    move-exception v13

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 226
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 225
    throw v13

    .line 218
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_109
    :try_start_109
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_101
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_109 .. :try_end_10c} :catch_d2

    .line 225
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_d6
.end method


# virtual methods
.method public doCheckAndStartObserver()V
    .registers 3

    .prologue
    .line 89
    const-string v0, "com.android.browser"

    iget-object v1, p0, Landroid/webkit/GearsPermissionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 97
    :goto_e
    return-void

    .line 93
    :cond_f
    invoke-direct {p0}, Landroid/webkit/GearsPermissionsManager;->checkGearsPermissions()V

    .line 95
    new-instance v0, Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;

    invoke-direct {v0, p0}, Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;-><init>(Landroid/webkit/GearsPermissionsManager;)V

    iput-object v0, p0, Landroid/webkit/GearsPermissionsManager;->mSettingsObserver:Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;

    .line 96
    iget-object v0, p0, Landroid/webkit/GearsPermissionsManager;->mSettingsObserver:Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;

    invoke-virtual {v0}, Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;->observe()V

    goto :goto_e
.end method
