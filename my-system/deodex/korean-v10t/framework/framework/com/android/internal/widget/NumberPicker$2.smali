.class Lcom/android/internal/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v0}, Lcom/android/internal/widget/NumberPicker;->access$000(Lcom/android/internal/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v1}, Lcom/android/internal/widget/NumberPicker;->access$100(Lcom/android/internal/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/widget/NumberPicker;->access$200(Lcom/android/internal/widget/NumberPicker;I)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v0}, Lcom/android/internal/widget/NumberPicker;->access$400(Lcom/android/internal/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v1}, Lcom/android/internal/widget/NumberPicker;->access$300(Lcom/android/internal/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :cond_24
    :goto_24
    return-void

    .line 85
    :cond_25
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v0}, Lcom/android/internal/widget/NumberPicker;->access$500(Lcom/android/internal/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v1}, Lcom/android/internal/widget/NumberPicker;->access$100(Lcom/android/internal/widget/NumberPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/widget/NumberPicker;->access$200(Lcom/android/internal/widget/NumberPicker;I)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v0}, Lcom/android/internal/widget/NumberPicker;->access$400(Lcom/android/internal/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker$2;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v1}, Lcom/android/internal/widget/NumberPicker;->access$300(Lcom/android/internal/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_24
.end method
