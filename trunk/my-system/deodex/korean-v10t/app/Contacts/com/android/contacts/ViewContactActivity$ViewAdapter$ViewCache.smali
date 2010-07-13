.class Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCache"
.end annotation


# instance fields
.field public actionIcon:Landroid/widget/ImageView;

.field public data:Landroid/widget/TextView;

.field entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;

.field public label:Landroid/widget/TextView;

.field public presenceIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
