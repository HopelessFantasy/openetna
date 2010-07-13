.class final Lcom/android/contacts/ViewContactActivity$ViewEntry;
.super Lcom/android/contacts/ContactEntryAdapter$Entry;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public actionIcon:I

.field public auxIntent:Landroid/content/Intent;

.field public iconData:Landroid/graphics/Bitmap;

.field public intent:Landroid/content/Intent;

.field public maxLabelLines:I

.field public presenceIcon:I

.field public primaryIcon:I

.field public time:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1673
    invoke-direct {p0}, Lcom/android/contacts/ContactEntryAdapter$Entry;-><init>()V

    .line 1674
    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->primaryIcon:I

    .line 1675
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1676
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->auxIntent:Landroid/content/Intent;

    .line 1677
    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presenceIcon:I

    .line 1678
    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1679
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLabelLines:I

    .line 1680
    iput-object v1, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->iconData:Landroid/graphics/Bitmap;

    .line 1681
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->time:J

    return-void
.end method
