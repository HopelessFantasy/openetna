.class public interface abstract Landroid/content/IContentProvider;
.super Ljava/lang/Object;
.source "IContentProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final BULK_INSERT_TRANSACTION:I = 0xd

.field public static final DELETE_TRANSACTION:I = 0x4

.field public static final GET_SYNC_ADAPTER_TRANSACTION:I = 0xb

.field public static final GET_TYPE_TRANSACTION:I = 0x2

.field public static final INSERT_TRANSACTION:I = 0x3

.field public static final OPEN_ASSET_FILE_TRANSACTION:I = 0xf

.field public static final OPEN_FILE_TRANSACTION:I = 0xe

.field public static final QUERY_TRANSACTION:I = 0x1

.field public static final UPDATE_TRANSACTION:I = 0xa

.field public static final descriptor:Ljava/lang/String; = "android.content.IContentProvider"


# virtual methods
.method public abstract bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract bulkQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/IContentObserver;Landroid/database/CursorWindow;)Landroid/database/IBulkCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSyncAdapter()Landroid/content/ISyncAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
