.class Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;
.super Ljava/lang/Object;
.source "ViewContactProfilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactProfilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileViewCache"
.end annotation


# instance fields
.field public checkView:Landroid/widget/CheckedTextView;

.field public dataView:Landroid/widget/TextView;

.field public entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

.field public iconView:Landroid/widget/ImageView;

.field public nameView:Landroid/widget/TextView;

.field public photoView:Landroid/widget/ImageView;

.field public presenceView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ViewContactProfilesActivity$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;-><init>()V

    return-void
.end method
