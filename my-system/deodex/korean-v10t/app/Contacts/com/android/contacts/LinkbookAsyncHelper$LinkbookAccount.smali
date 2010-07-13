.class public Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
.super Ljava/lang/Object;
.source "LinkbookAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/LinkbookAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkbookAccount"
.end annotation


# instance fields
.field mAccountUid:Ljava/lang/String;

.field mIcon:Landroid/graphics/Bitmap;

.field mId:J

.field mSnSiteId:Ljava/lang/String;

.field mSnUserId:Ljava/lang/String;

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
