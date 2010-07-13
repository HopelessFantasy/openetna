.class Lcom/lge/android/memo/GenericColorPallet$1;
.super Ljava/lang/Object;
.source "GenericColorPallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/memo/GenericColorPallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/memo/GenericColorPallet;


# direct methods
.method constructor <init>(Lcom/lge/android/memo/GenericColorPallet;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lge/android/memo/GenericColorPallet$1;->this$0:Lcom/lge/android/memo/GenericColorPallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/android/memo/GenericColorPallet$1;->this$0:Lcom/lge/android/memo/GenericColorPallet;

    invoke-static {v0}, Lcom/lge/android/memo/GenericColorPallet;->access$000(Lcom/lge/android/memo/GenericColorPallet;)I

    move-result v0

    sput v0, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    .line 184
    return-void
.end method
