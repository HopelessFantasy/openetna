.class Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PhotoAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhotoDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0x2

.field static final FIELD_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field static final FIELD_PHOTO_BLOB:Ljava/lang/String; = "photoBlob"

.field static final INDEX_PHOTO_BLOB:I = 0x0

.field static final PHOTOS_PROJECTION:[Ljava/lang/String; = null

.field static final TABLE_PHOTOS:Ljava/lang/String; = "photos"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "photoBlob"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->PHOTOS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 118
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 119
    iput-object p1, p0, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method


# virtual methods
.method public deletePhoto(I)V
    .registers 9
    .parameter "appWidgetId"

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 214
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "%s=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "appWidgetId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, whereClause:Ljava/lang/String;
    const-string v3, "photos"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 219
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #whereClause:Ljava/lang/String;
    :goto_1f
    return-void

    .line 216
    :catch_20
    move-exception v3

    move-object v1, v3

    .line 217
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "PhotoAppWidgetProvider"

    const-string v4, "Could not delete photo from database"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public getPhoto(I)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "appWidgetId"

    .prologue
    const-string v1, "PhotoAppWidgetProvider"

    .line 182
    const/4 v10, 0x0

    .line 183
    .local v10, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 185
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 186
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "%s=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "appWidgetId"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, selection:Ljava/lang/String;
    const-string v1, "photos"

    sget-object v2, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->PHOTOS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 190
    if-eqz v10, :cond_48

    const-string v1, "PhotoAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoto query count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_48
    if-eqz v10, :cond_5d

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 193
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 194
    .local v11, data:[B
    if-eqz v11, :cond_5d

    .line 195
    const/4 v1, 0x0

    array-length v2, v11

    invoke-static {v11, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_5c} :catch_63

    move-result-object v9

    .line 201
    .end local v11           #data:[B
    :cond_5d
    if-eqz v10, :cond_62

    .line 202
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 205
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #selection:Ljava/lang/String;
    :cond_62
    :goto_62
    return-object v9

    .line 198
    :catch_63
    move-exception v1

    move-object v12, v1

    .line 199
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    :try_start_65
    const-string v1, "PhotoAppWidgetProvider"

    const-string v2, "Could not load photo from database"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_72

    .line 201
    if-eqz v10, :cond_62

    .line 202
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_62

    .line 201
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_72
    move-exception v1

    if-eqz v10, :cond_78

    .line 202
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_78
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 124
    const-string v0, "CREATE TABLE photos (appWidgetId INTEGER PRIMARY KEY,photoBlob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 132
    move v0, p2

    .line 134
    .local v0, version:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 135
    const-string v1, "PhotoAppWidgetProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v1, "DROP TABLE IF EXISTS photos"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    :cond_13
    return-void
.end method

.method public setPhoto(ILandroid/graphics/Bitmap;)Z
    .registers 12
    .parameter "appWidgetId"
    .parameter "bitmap"

    .prologue
    const-string v8, "PhotoAppWidgetProvider"

    .line 145
    const/4 v4, 0x0

    .line 149
    .local v4, success:Z
    :try_start_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v3, v6, 0x4

    .line 150
    .local v3, size:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 151
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 152
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 153
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 155
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "appWidgetId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v6, "photoBlob"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 160
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "photos"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_41} :catch_5b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_41} :catch_65

    .line 162
    const/4 v4, 0x1

    .line 168
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_42
    const-string v6, "PhotoAppWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPhoto success="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v4

    .line 163
    :catch_5b
    move-exception v6

    move-object v1, v6

    .line 164
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v6, "PhotoAppWidgetProvider"

    const-string v6, "Could not open database"

    invoke-static {v8, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 165
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_65
    move-exception v6

    move-object v1, v6

    .line 166
    .local v1, e:Ljava/io/IOException;
    const-string v6, "PhotoAppWidgetProvider"

    const-string v6, "Could not serialize photo"

    invoke-static {v8, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42
.end method
