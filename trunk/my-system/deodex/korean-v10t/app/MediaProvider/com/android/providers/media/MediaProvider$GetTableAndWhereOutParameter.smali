.class final Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
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
    .line 1520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1520
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;-><init>()V

    return-void
.end method
