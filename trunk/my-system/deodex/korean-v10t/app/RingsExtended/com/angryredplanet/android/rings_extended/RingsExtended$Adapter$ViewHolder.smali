.class Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;
.super Ljava/lang/Object;
.source "RingsExtended.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field more:Landroid/widget/ImageView;

.field radio:Landroid/widget/RadioButton;

.field textDouble1:Landroid/widget/TextView;

.field textDouble2:Landroid/widget/TextView;

.field textSingle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;


# direct methods
.method constructor <init>(Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->this$1:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
