.class final Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;
.super Ljava/lang/Object;
.source "DrmProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/drm/DrmProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetTableAndWhereOutParameter"
.end annotation


# instance fields
.field public table:Ljava/lang/String;

.field public where:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/drm/DrmProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;-><init>()V

    return-void
.end method