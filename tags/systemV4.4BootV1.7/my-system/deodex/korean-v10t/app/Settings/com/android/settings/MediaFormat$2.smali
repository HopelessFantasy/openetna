.class Lcom/android/settings/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v0}, Lcom/android/settings/MediaFormat;->access$000(Lcom/android/settings/MediaFormat;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 126
    iget-object v0, p0, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v0}, Lcom/android/settings/MediaFormat;->access$100(Lcom/android/settings/MediaFormat;)V

    .line 130
    :goto_11
    return-void

    .line 128
    :cond_12
    iget-object v0, p0, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v0}, Lcom/android/settings/MediaFormat;->access$200(Lcom/android/settings/MediaFormat;)V

    goto :goto_11
.end method
