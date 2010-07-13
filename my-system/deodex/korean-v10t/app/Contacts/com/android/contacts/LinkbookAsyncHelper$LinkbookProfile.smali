.class public Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
.super Ljava/lang/Object;
.source "LinkbookAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/LinkbookAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkbookProfile"
.end annotation


# instance fields
.field mDisplayName:Ljava/lang/String;

.field mId:J

.field mImage:Landroid/graphics/Bitmap;

.field mSnSiteId:Ljava/lang/String;

.field mSnsId:Ljava/lang/String;

.field mStatus:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field mUserName:Ljava/lang/String;

.field mUserUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mId:J

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method
