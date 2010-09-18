.class final Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;
.super Ljava/lang/Object;
.source "RingsExtended.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angryredplanet/android/rings_extended/RingsExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ItemInfo"
.end annotation


# instance fields
.field final icon:Landroid/graphics/drawable/Drawable;

.field final name:Ljava/lang/CharSequence;

.field final subtitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "_name"
    .parameter "_subtitle"
    .parameter "_icon"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;->name:Ljava/lang/CharSequence;

    .line 99
    iput-object p2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;->subtitle:Ljava/lang/CharSequence;

    .line 100
    iput-object p3, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 101
    return-void
.end method
