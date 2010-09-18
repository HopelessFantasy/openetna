.class public Lcom/android/settings/LauncherAppWidgetBinder;
.super Landroid/app/Activity;
.source "LauncherAppWidgetBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LauncherAppWidgetBinder$LauncherProvider;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.android.launcher.settings"

.field static final BIND_PHOTO_APPWIDGET:Landroid/content/ComponentName; = null

.field static final BIND_PROJECTION:[Ljava/lang/String; = null

.field static final EXTRA_APPWIDGET_BITMAPS:Ljava/lang/String; = "com.android.camera.appwidgetbitmaps"

.field static final EXTRA_BIND_HOMECUBE:Ljava/lang/String; = "com.lge.homecube"

.field static final EXTRA_BIND_SOURCES:Ljava/lang/String; = "com.android.launcher.settings.bindsources"

.field static final EXTRA_BIND_TARGETS:Ljava/lang/String; = "com.android.launcher.settings.bindtargets"

.field static final HOMECUBE_AUTHORITY:Ljava/lang/String; = "com.lge.homecube.settings"

.field static final INDEX_APPWIDGET_ID:I = 0x2

.field static final INDEX_ICON:I = 0x3

.field static final INDEX_ID:I = 0x0

.field static final INDEX_ITEM_TYPE:I = 0x1

.field private static final LOGD:Z = true

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG:Ljava/lang/String; = "LauncherAppWidgetBinder"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/LauncherAppWidgetBinder;->BIND_PROJECTION:[Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.camera"

    const-string v2, "com.android.camera.PhotoAppWidgetBind"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/LauncherAppWidgetBinder;->BIND_PHOTO_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 6
    .parameter "column"
    .parameter "values"

    .prologue
    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v1, selectWhere:Ljava/lang/StringBuilder;
    array-length v2, p1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_24

    .line 245
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    if-lez v0, :cond_21

    .line 247
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 250
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 40
    .parameter "icicle"

    .prologue
    .line 90
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LauncherAppWidgetBinder;->finish()V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LauncherAppWidgetBinder;->getIntent()Landroid/content/Intent;

    move-result-object v30

    .line 99
    .local v30, intent:Landroid/content/Intent;
    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    .line 101
    .local v23, extras:Landroid/os/Bundle;
    const/16 v16, 0x0

    .line 102
    .local v16, bindSources:[I
    const/16 v18, 0x0

    .line 103
    .local v18, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/16 v22, 0x0

    .line 105
    .local v22, exception:Ljava/lang/Exception;
    const-string v6, "com.lge.homecube"

    const/4 v7, 0x0

    move-object/from16 v0, v23

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 108
    .local v31, isHomecube:Z
    :try_start_1f
    const-string v6, "com.android.launcher.settings.bindsources"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v16

    .line 109
    const-string v6, "com.android.launcher.settings.bindtargets"

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_30} :catch_4d

    move-result-object v18

    .line 114
    :goto_31
    if-nez v22, :cond_41

    if-eqz v16, :cond_41

    if-eqz v18, :cond_41

    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_53

    .line 116
    :cond_41
    const-string v6, "LauncherAppWidgetBinder"

    const-string v7, "Problem reading incoming bind request, or invalid request"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local p1
    :goto_4c
    return-void

    .line 110
    .restart local p1
    :catch_4d
    move-exception v6

    move-object/from16 v21, v6

    .line 111
    .local v21, ex:Ljava/lang/ClassCastException;
    move-object/from16 v22, v21

    goto :goto_31

    .line 120
    .end local v21           #ex:Ljava/lang/ClassCastException;
    :cond_53
    const-string v6, "itemType"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/LauncherAppWidgetBinder;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, selectWhere:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LauncherAppWidgetBinder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 123
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    .line 125
    .local v13, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/16 v27, 0x0

    .line 126
    .local v27, foundPhotoAppWidgets:Z
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v33, photoAppWidgetIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v35, photoBitmaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/16 v20, 0x0

    .line 133
    .local v20, c:Landroid/database/Cursor;
    if-eqz v31, :cond_1cb

    .line 135
    :try_start_74
    sget-object v6, Lcom/android/settings/LauncherAppWidgetBinder$LauncherProvider;->HOMECUBE_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/settings/LauncherAppWidgetBinder;->BIND_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 144
    :goto_7e
    const-string v6, "LauncherAppWidgetBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found bind cursor count="

    .end local v8           #selectWhere:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v37, values:Landroid/content/ContentValues;
    :goto_9f
    if-eqz v20, :cond_207

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_207

    .line 148
    const/4 v6, 0x0

    move-object/from16 v0, v20

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 149
    .local v24, favoriteId:J
    const/4 v6, 0x1

    move-object/from16 v0, v20

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 150
    .local v32, itemType:I
    const/4 v6, 0x2

    move-object/from16 v0, v20

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 151
    .local v12, appWidgetId:I
    const/4 v6, 0x3

    move-object/from16 v0, v20

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 154
    .local v29, iconData:[B
    const/16 v36, 0x0

    .line 155
    .local v36, targetAppWidget:Landroid/content/ComponentName;
    const/16 v28, 0x0

    .local v28, i:I
    :goto_cb
    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    move/from16 v0, v28

    move v1, v6

    if-ge v0, v1, :cond_e5

    .line 156
    aget v6, v16, v28

    move v0, v6

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d7

    .line 157
    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    .end local v36           #targetAppWidget:Landroid/content/ComponentName;
    check-cast v36, Landroid/content/ComponentName;

    .line 162
    .restart local v36       #targetAppWidget:Landroid/content/ComponentName;
    :cond_e5
    const-string v6, "LauncherAppWidgetBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found matching targetAppWidget="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for favoriteId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catchall {:try_start_74 .. :try_end_10e} :catchall_1e9
    .catch Landroid/database/SQLException; {:try_start_74 .. :try_end_10e} :catch_193

    .line 164
    const/16 v17, 0x0

    .line 166
    .local v17, bindSuccess:Z
    :try_start_110
    move-object v0, v13

    move v1, v12

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_117
    .catchall {:try_start_110 .. :try_end_117} :catchall_1e9
    .catch Ljava/lang/RuntimeException; {:try_start_110 .. :try_end_117} :catch_1db
    .catch Landroid/database/SQLException; {:try_start_110 .. :try_end_117} :catch_193

    .line 167
    const/16 v17, 0x1

    .line 174
    :goto_119
    if-eqz v17, :cond_144

    if-eqz v29, :cond_144

    const/16 v6, 0x3ea

    move/from16 v0, v32

    move v1, v6

    if-ne v0, v1, :cond_144

    .line 176
    const/4 v6, 0x0

    :try_start_125
    move-object/from16 v0, v29

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v29

    move v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 178
    .local v19, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const/16 v27, 0x1

    .line 183
    .end local v19           #bitmap:Landroid/graphics/Bitmap;
    :cond_144
    const-string v6, "LauncherAppWidgetBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after finished, success="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v31, :cond_1f0

    .line 189
    sget-object v6, Lcom/android/settings/LauncherAppWidgetBinder$LauncherProvider;->HOMECUBE_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    .line 196
    .local v26, favoritesUri:Landroid/net/Uri;
    :goto_16a
    if-eqz v17, :cond_1fb

    .line 197
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentValues;->clear()V

    .line 198
    const-string v6, "itemType"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v6, "icon"

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 200
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    move-object/from16 v2, v37

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_191
    .catchall {:try_start_125 .. :try_end_191} :catchall_1e9
    .catch Landroid/database/SQLException; {:try_start_125 .. :try_end_191} :catch_193

    goto/16 :goto_9f

    .line 206
    .end local v12           #appWidgetId:I
    .end local v17           #bindSuccess:Z
    .end local v24           #favoriteId:J
    .end local v26           #favoritesUri:Landroid/net/Uri;
    .end local v28           #i:I
    .end local v29           #iconData:[B
    .end local v32           #itemType:I
    .end local v36           #targetAppWidget:Landroid/content/ComponentName;
    .end local v37           #values:Landroid/content/ContentValues;
    :catch_193
    move-exception v6

    move-object/from16 v21, v6

    .line 207
    .local v21, ex:Landroid/database/SQLException;
    :try_start_196
    const-string v6, "LauncherAppWidgetBinder"

    const-string v7, "Problem while binding appWidgetIds for Launcher"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a1
    .catchall {:try_start_196 .. :try_end_1a1} :catchall_1e9

    .line 209
    if-eqz v20, :cond_1a6

    .line 210
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 214
    .end local v21           #ex:Landroid/database/SQLException;
    :cond_1a6
    :goto_1a6
    if-eqz v27, :cond_237

    .line 216
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 217
    .local v11, N:I
    move v0, v11

    new-array v0, v0, [I

    move-object/from16 v34, v0

    .line 218
    .local v34, photoAppWidgetIdsArray:[I
    const/16 v28, 0x0

    .end local p1
    .restart local v28       #i:I
    :goto_1b3
    move/from16 v0, v28

    move v1, v11

    if-ge v0, v1, :cond_20d

    .line 219
    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v34, v28

    .line 218
    add-int/lit8 v28, v28, 0x1

    goto :goto_1b3

    .line 140
    .end local v11           #N:I
    .end local v28           #i:I
    .end local v34           #photoAppWidgetIdsArray:[I
    .restart local v8       #selectWhere:Ljava/lang/String;
    .restart local p1
    :cond_1cb
    :try_start_1cb
    sget-object v6, Lcom/android/settings/LauncherAppWidgetBinder$LauncherProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/settings/LauncherAppWidgetBinder;->BIND_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_7e

    .line 155
    .end local v8           #selectWhere:Ljava/lang/String;
    .restart local v12       #appWidgetId:I
    .restart local v24       #favoriteId:J
    .restart local v28       #i:I
    .restart local v29       #iconData:[B
    .restart local v32       #itemType:I
    .restart local v36       #targetAppWidget:Landroid/content/ComponentName;
    .restart local v37       #values:Landroid/content/ContentValues;
    :cond_1d7
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_cb

    .line 168
    .restart local v17       #bindSuccess:Z
    :catch_1db
    move-exception v21

    .line 169
    .local v21, ex:Ljava/lang/RuntimeException;
    const-string v6, "LauncherAppWidgetBinder"

    const-string v7, "Problem binding widget"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e7
    .catchall {:try_start_1cb .. :try_end_1e7} :catchall_1e9
    .catch Landroid/database/SQLException; {:try_start_1cb .. :try_end_1e7} :catch_193

    goto/16 :goto_119

    .line 209
    .end local v12           #appWidgetId:I
    .end local v17           #bindSuccess:Z
    .end local v21           #ex:Ljava/lang/RuntimeException;
    .end local v24           #favoriteId:J
    .end local v28           #i:I
    .end local v29           #iconData:[B
    .end local v32           #itemType:I
    .end local v36           #targetAppWidget:Landroid/content/ComponentName;
    .end local v37           #values:Landroid/content/ContentValues;
    :catchall_1e9
    move-exception v6

    if-eqz v20, :cond_1ef

    .line 210
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_1ef
    throw v6

    .line 193
    .restart local v12       #appWidgetId:I
    .restart local v17       #bindSuccess:Z
    .restart local v24       #favoriteId:J
    .restart local v28       #i:I
    .restart local v29       #iconData:[B
    .restart local v32       #itemType:I
    .restart local v36       #targetAppWidget:Landroid/content/ComponentName;
    .restart local v37       #values:Landroid/content/ContentValues;
    :cond_1f0
    :try_start_1f0
    sget-object v6, Lcom/android/settings/LauncherAppWidgetBinder$LauncherProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    .restart local v26       #favoritesUri:Landroid/net/Uri;
    goto/16 :goto_16a

    .line 202
    :cond_1fb
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_205
    .catchall {:try_start_1f0 .. :try_end_205} :catchall_1e9
    .catch Landroid/database/SQLException; {:try_start_1f0 .. :try_end_205} :catch_193

    goto/16 :goto_9f

    .line 209
    .end local v12           #appWidgetId:I
    .end local v17           #bindSuccess:Z
    .end local v24           #favoriteId:J
    .end local v26           #favoritesUri:Landroid/net/Uri;
    .end local v28           #i:I
    .end local v29           #iconData:[B
    .end local v32           #itemType:I
    .end local v36           #targetAppWidget:Landroid/content/ComponentName;
    :cond_207
    if-eqz v20, :cond_1a6

    .line 210
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_1a6

    .line 224
    .end local v37           #values:Landroid/content/ContentValues;
    .end local p1
    .restart local v11       #N:I
    .restart local v28       #i:I
    .restart local v34       #photoAppWidgetIdsArray:[I
    :cond_20d
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v15, bindIntent:Landroid/content/Intent;
    sget-object v6, Lcom/android/settings/LauncherAppWidgetBinder;->BIND_PHOTO_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v15, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 227
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v14, bindExtras:Landroid/os/Bundle;
    const-string v6, "appWidgetIds"

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 229
    const-string v6, "com.android.camera.appwidgetbitmaps"

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 230
    invoke-virtual {v15, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/LauncherAppWidgetBinder;->startActivity(Landroid/content/Intent;)V

    .line 235
    .end local v11           #N:I
    .end local v14           #bindExtras:Landroid/os/Bundle;
    .end local v15           #bindIntent:Landroid/content/Intent;
    .end local v28           #i:I
    .end local v34           #photoAppWidgetIdsArray:[I
    :cond_237
    const-string v6, "LauncherAppWidgetBinder"

    const-string v7, "completely finished with binding for Launcher"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c
.end method
