.class Lcom/android/browser/GearsBaseDialog$2;
.super Ljava/lang/Object;
.source "GearsBaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/GearsBaseDialog;->setupButtons(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/GearsBaseDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/GearsBaseDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/browser/GearsBaseDialog$2;->this$0:Lcom/android/browser/GearsBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/browser/GearsBaseDialog$2;->this$0:Lcom/android/browser/GearsBaseDialog;

    iget-object v0, v0, Lcom/android/browser/GearsBaseDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    return-void
.end method
