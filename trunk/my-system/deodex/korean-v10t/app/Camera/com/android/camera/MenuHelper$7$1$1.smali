.class Lcom/android/camera/MenuHelper$7$1$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper$7$1;->run(Landroid/net/Uri;Lcom/android/camera/ImageManager$IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/MenuHelper$7$1;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHelper$7$1;)V
    .registers 2
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/camera/MenuHelper$7$1$1;->this$1:Lcom/android/camera/MenuHelper$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 440
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 441
    return-void
.end method
