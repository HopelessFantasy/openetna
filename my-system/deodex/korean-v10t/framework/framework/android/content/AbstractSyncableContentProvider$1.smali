.class Landroid/content/AbstractSyncableContentProvider$1;
.super Ljava/lang/Object;
.source "AbstractSyncableContentProvider.java"

# interfaces
.implements Landroid/accounts/AccountMonitorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/AbstractSyncableContentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractSyncableContentProvider;


# direct methods
.method constructor <init>(Landroid/content/AbstractSyncableContentProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Landroid/content/AbstractSyncableContentProvider$1;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Ljava/lang/String;)V
    .registers 5
    .parameter "accounts"

    .prologue
    .line 157
    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider$1;->this$0:Landroid/content/AbstractSyncableContentProvider;

    iget-object v2, p0, Landroid/content/AbstractSyncableContentProvider$1;->this$0:Landroid/content/AbstractSyncableContentProvider;

    iget-object v2, v2, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, v1, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 158
    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider$1;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-virtual {v1, p1}, Landroid/content/AbstractSyncableContentProvider;->onAccountsChanged([Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider$1;->this$0:Landroid/content/AbstractSyncableContentProvider;

    invoke-virtual {v1}, Landroid/content/AbstractSyncableContentProvider;->getSyncAdapter()Landroid/content/SyncAdapter;

    move-result-object v0

    check-cast v0, Landroid/content/TempProviderSyncAdapter;

    .line 160
    .local v0, syncAdapter:Landroid/content/TempProviderSyncAdapter;
    if-eqz v0, :cond_1e

    .line 161
    invoke-virtual {v0, p1}, Landroid/content/TempProviderSyncAdapter;->onAccountsChanged([Ljava/lang/String;)V

    .line 163
    :cond_1e
    return-void
.end method
