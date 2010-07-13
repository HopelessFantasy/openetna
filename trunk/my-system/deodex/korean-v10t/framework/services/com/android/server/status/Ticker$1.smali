.class Lcom/android/server/status/Ticker$1;
.super Ljava/lang/Object;
.source "Ticker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/Ticker;


# direct methods
.method constructor <init>(Lcom/android/server/status/Ticker;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 197
    :goto_1
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_46

    .line 198
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/Ticker$Segment;

    .line 200
    .local v0, seg:Lcom/android/server/status/Ticker$Segment;
    iget-boolean v2, v0, Lcom/android/server/status/Ticker$Segment;->first:Z

    if-eqz v2, :cond_28

    .line 204
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$300(Lcom/android/server/status/Ticker;)Landroid/widget/ImageSwitcher;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/status/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/status/Ticker$Segment;->advance()Ljava/lang/CharSequence;

    move-result-object v1

    .line 207
    .local v1, text:Ljava/lang/CharSequence;
    if-nez v1, :cond_38

    .line 208
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 211
    :cond_38
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$000(Lcom/android/server/status/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$400(Lcom/android/server/status/Ticker;)V

    .line 216
    .end local v0           #seg:Lcom/android/server/status/Ticker$Segment;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_46
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_57

    .line 217
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-virtual {v2}, Lcom/android/server/status/Ticker;->tickerDone()V

    .line 219
    :cond_57
    return-void
.end method
