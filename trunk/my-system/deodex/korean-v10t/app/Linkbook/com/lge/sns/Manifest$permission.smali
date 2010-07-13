.class public final Lcom/lge/sns/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final READ_SN_MANAGER:Ljava/lang/String; = "com.lge.sns.READ_SN_MANAGER"

.field public static final WRITE_SN_MANAGER:Ljava/lang/String; = "com.lge.sns.WRITE_SN_MANAGER"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
