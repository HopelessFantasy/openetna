.class public abstract Landroid/content/SyncAdapter;
.super Ljava/lang/Object;
.source "SyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncAdapter$Transport;
    }
.end annotation


# static fields
.field public static final LOG_SYNC_DETAILS:I = 0xab7

.field private static final TAG:Ljava/lang/String; = "SyncAdapter"


# instance fields
.field mTransport:Landroid/content/SyncAdapter$Transport;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/content/SyncAdapter$Transport;

    invoke-direct {v0, p0}, Landroid/content/SyncAdapter$Transport;-><init>(Landroid/content/SyncAdapter;)V

    iput-object v0, p0, Landroid/content/SyncAdapter;->mTransport:Landroid/content/SyncAdapter$Transport;

    return-void
.end method


# virtual methods
.method public abstract cancelSync()V
.end method

.method final getISyncAdapter()Landroid/content/ISyncAdapter;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Landroid/content/SyncAdapter;->mTransport:Landroid/content/SyncAdapter$Transport;

    return-object v0
.end method

.method public abstract startSync(Landroid/content/SyncContext;Ljava/lang/String;Landroid/os/Bundle;)V
.end method
