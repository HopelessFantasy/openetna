.class public final Lcom/lge/providers/system/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/providers/system/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final LGSystemDB_READ:Ljava/lang/String; = "com.lge.permission.LGSystemDB_READ"

.field public static final LGSystemDB_WRITE:Ljava/lang/String; = "com.lge.permission.LGSystemDB_WRITE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
