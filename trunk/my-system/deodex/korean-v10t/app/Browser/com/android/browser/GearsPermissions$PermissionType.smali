.class public Lcom/android/browser/GearsPermissions$PermissionType;
.super Ljava/lang/Object;
.source "GearsPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/GearsPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionType"
.end annotation


# static fields
.field public static final PERMISSION_ALLOWED:I = 0x1

.field public static final PERMISSION_DENIED:I = 0x2

.field public static final PERMISSION_NOT_SET:I


# instance fields
.field mName:Ljava/lang/String;

.field mSubtitleOffRsc:I

.field mSubtitleOnRsc:I

.field mTitleRsc:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/browser/GearsPermissions$PermissionType;->mName:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/GearsPermissions$PermissionType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleOffRsc()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/browser/GearsPermissions$PermissionType;->mSubtitleOffRsc:I

    return v0
.end method

.method public getSubtitleOnRsc()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/android/browser/GearsPermissions$PermissionType;->mSubtitleOnRsc:I

    return v0
.end method

.method public getTitleRsc()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/android/browser/GearsPermissions$PermissionType;->mTitleRsc:I

    return v0
.end method

.method public setResources(III)V
    .registers 4
    .parameter "titleRsc"
    .parameter "subtitleOnRsc"
    .parameter "subtitleOffRsc"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/browser/GearsPermissions$PermissionType;->mTitleRsc:I

    .line 63
    iput p2, p0, Lcom/android/browser/GearsPermissions$PermissionType;->mSubtitleOnRsc:I

    .line 64
    iput p3, p0, Lcom/android/browser/GearsPermissions$PermissionType;->mSubtitleOffRsc:I

    .line 65
    return-void
.end method
