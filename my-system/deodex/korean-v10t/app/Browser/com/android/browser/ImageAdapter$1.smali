.class Lcom/android/browser/ImageAdapter$1;
.super Ljava/lang/Object;
.source "ImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ImageAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/browser/ImageAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/browser/ImageAdapter$1;->this$0:Lcom/android/browser/ImageAdapter;

    iput p2, p0, Lcom/android/browser/ImageAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/browser/ImageAdapter$1;->this$0:Lcom/android/browser/ImageAdapter;

    iget v1, p0, Lcom/android/browser/ImageAdapter$1;->val$pos:I

    invoke-static {v0, v1}, Lcom/android/browser/ImageAdapter;->access$000(Lcom/android/browser/ImageAdapter;I)V

    .line 206
    return-void
.end method
