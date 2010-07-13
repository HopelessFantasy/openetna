.class final Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;
.super Ljava/lang/Object;
.source "ViewContactProfilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactProfilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProfileId"
.end annotation


# instance fields
.field _id:J

.field snSiteId:Ljava/lang/String;

.field userUid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->_id:J

    return-void
.end method
