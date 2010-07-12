.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    return-void
.end method

.method private enforceReadPermission(Landroid/net/Uri;)V
    .registers 14
    .parameter "uri"

    .prologue
    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 181
    .local v9, uid:I
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v10}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v10

    if-ne v9, v10, :cond_d

    .line 214
    :cond_c
    :goto_c
    return-void

    .line 185
    :cond_d
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v10}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    .local v0, context:Landroid/content/Context;
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v10}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, rperm:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 188
    .local v4, pid:I
    if-eqz v8, :cond_c

    invoke-virtual {v0, v8, v4, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_c

    .line 194
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v10}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v7

    .line 195
    .local v7, pps:[Landroid/content/pm/PathPermission;
    if-eqz v7, :cond_4b

    .line 196
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, path:Ljava/lang/String;
    array-length v1, v7

    .line 198
    .local v1, i:I
    :cond_32
    if-lez v1, :cond_4b

    .line 199
    add-int/lit8 v1, v1, -0x1

    .line 200
    aget-object v5, v7, v1

    .line 201
    .local v5, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, pprperm:Ljava/lang/String;
    if-eqz v6, :cond_32

    invoke-virtual {v5, v3}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 203
    invoke-virtual {v0, v6, v4, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_32

    goto :goto_c

    .line 211
    .end local v1           #i:I
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #pp:Landroid/content/pm/PathPermission;
    .end local v6           #pprperm:Ljava/lang/String;
    :cond_4b
    const/4 v10, 0x1

    invoke-virtual {v0, p1, v4, v9, v10}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v10

    if-eqz v10, :cond_c

    .line 217
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uri "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requires "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, msg:Ljava/lang/String;
    new-instance v10, Ljava/lang/SecurityException;

    invoke-direct {v10, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private enforceWritePermission(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->hasWritePermission(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 268
    return-void

    .line 271
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hasWritePermission(Landroid/net/Uri;)Z
    .registers 13
    .parameter "uri"

    .prologue
    const/4 v10, 0x1

    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 227
    .local v7, uid:I
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v9}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v9

    if-ne v7, v9, :cond_f

    move v9, v10

    .line 263
    :goto_e
    return v9

    .line 231
    :cond_f
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v9}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 232
    .local v0, context:Landroid/content/Context;
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v9}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, wperm:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 234
    .local v3, pid:I
    if-eqz v8, :cond_27

    invoke-virtual {v0, v8, v3, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_29

    :cond_27
    move v9, v10

    .line 237
    goto :goto_e

    .line 240
    :cond_29
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v9}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v5

    .line 241
    .local v5, pps:[Landroid/content/pm/PathPermission;
    if-eqz v5, :cond_50

    .line 242
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, path:Ljava/lang/String;
    array-length v1, v5

    .line 244
    .local v1, i:I
    :cond_36
    if-lez v1, :cond_50

    .line 245
    add-int/lit8 v1, v1, -0x1

    .line 246
    aget-object v4, v5, v1

    .line 247
    .local v4, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, ppwperm:Ljava/lang/String;
    if-eqz v6, :cond_36

    invoke-virtual {v4, v2}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 249
    invoke-virtual {v0, v6, v3, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_36

    move v9, v10

    .line 251
    goto :goto_e

    .line 257
    .end local v1           #i:I
    .end local v2           #path:Ljava/lang/String;
    .end local v4           #pp:Landroid/content/pm/PathPermission;
    .end local v6           #ppwperm:Ljava/lang/String;
    :cond_50
    const/4 v9, 0x2

    invoke-virtual {v0, p1, v3, v7, v9}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v9

    if-nez v9, :cond_59

    move v9, v10

    .line 260
    goto :goto_e

    .line 263
    :cond_59
    const/4 v9, 0x0

    goto :goto_e
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 4
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 145
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public bulkQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/IContentObserver;Landroid/database/CursorWindow;)Landroid/database/IBulkCursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "observer"
    .parameter "window"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    .line 116
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 118
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_12

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor;

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->hasWritePermission(Landroid/net/Uri;)Z

    move-result v4

    move-object v2, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;ZLandroid/database/CursorWindow;)V

    goto :goto_11
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 150
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getSyncAdapter()Landroid/content/ISyncAdapter;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0, v2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 175
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getSyncAdapter()Landroid/content/SyncAdapter;

    move-result-object v0

    .line 176
    .local v0, sa:Landroid/content/SyncAdapter;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/SyncAdapter;->getISyncAdapter()Landroid/content/ISyncAdapter;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    move-object v1, v2

    goto :goto_10
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 134
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 140
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 168
    if-eqz p2, :cond_14

    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 170
    :goto_d
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 169
    :cond_14
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    goto :goto_d
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p2, :cond_14

    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 163
    :goto_d
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 162
    :cond_14
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    goto :goto_d
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    .line 129
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 156
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
