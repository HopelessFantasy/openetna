.class final Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
.super Lcom/android/contacts/ProfileEntryAdapter$Entry;
.source "ViewContactProfilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactProfilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public isActivated:Z

.field public isMarked:Z

.field public isNew:Z

.field public photoData:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 826
    invoke-direct {p0}, Lcom/android/contacts/ProfileEntryAdapter$Entry;-><init>()V

    .line 827
    iput-boolean v0, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->isActivated:Z

    .line 828
    iput-boolean v0, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->isMarked:Z

    .line 829
    iput-boolean v0, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->isNew:Z

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->photoData:Landroid/graphics/Bitmap;

    return-void
.end method
