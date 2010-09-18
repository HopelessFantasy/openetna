.class public Landroid/content/TempProviderSyncResult;
.super Ljava/lang/Object;
.source "TempProviderSyncResult.java"


# instance fields
.field public tempContentProvider:Landroid/content/SyncableContentProvider;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    .line 35
    return-void
.end method
