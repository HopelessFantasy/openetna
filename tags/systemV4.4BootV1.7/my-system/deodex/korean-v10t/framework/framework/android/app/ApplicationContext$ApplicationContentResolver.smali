.class final Landroid/app/ApplicationContext$ApplicationContentResolver;
.super Landroid/content/ContentResolver;
.source "ApplicationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationContentResolver"
.end annotation


# instance fields
.field private final mMainThread:Landroid/app/ActivityThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityThread;)V
    .registers 3
    .parameter "context"
    .parameter "mainThread"

    .prologue
    .line 1768
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 1769
    iput-object p2, p0, Landroid/app/ApplicationContext$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 1770
    return-void
.end method


# virtual methods
.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 1775
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .registers 3
    .parameter "provider"

    .prologue
    .line 1781
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0
.end method
