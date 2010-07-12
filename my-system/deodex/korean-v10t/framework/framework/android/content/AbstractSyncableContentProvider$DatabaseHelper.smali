.class Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AbstractSyncableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractSyncableContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractSyncableContentProvider;


# direct methods
.method constructor <init>(Landroid/content/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 121
    iput-object p1, p0, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Landroid/content/AbstractSyncableContentProvider;

    .line 123
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/content/AbstractSyncableContentProvider;->access$000(Landroid/content/AbstractSyncableContentProvider;)I

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 124
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/AbstractSyncableContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-static {v0}, Landroid/content/AbstractSyncableContentProvider;->access$100(Landroid/content/AbstractSyncableContentProvider;)Landroid/content/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/AbstractSyncableContentProvider;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-static {v0}, Landroid/content/AbstractSyncableContentProvider;->access$100(Landroid/content/AbstractSyncableContentProvider;)Landroid/content/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 134
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/AbstractSyncableContentProvider;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 135
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-static {v0}, Landroid/content/AbstractSyncableContentProvider;->access$100(Landroid/content/AbstractSyncableContentProvider;)Landroid/content/SyncStateContentProviderHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/SyncStateContentProviderHelper;->discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-virtual {v0}, Landroid/content/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-static {v1}, Landroid/content/AbstractSyncableContentProvider;->access$200(Landroid/content/AbstractSyncableContentProvider;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 138
    :cond_2a
    return-void
.end method
