.class public Landroid/content/SyncStorageEngine$AuthorityInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorityInfo"
.end annotation


# instance fields
.field final account:Ljava/lang/String;

.field final authority:Ljava/lang/String;

.field enabled:Z

.field final ident:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "account"
    .parameter "authority"
    .parameter "ident"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 172
    iput p3, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 174
    return-void
.end method
