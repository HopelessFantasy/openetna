.class Landroid/widget/LGETimePicker$5;
.super Ljava/lang/Object;
.source "LGETimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/LGETimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/LGETimePicker;


# direct methods
.method constructor <init>(Landroid/widget/LGETimePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0xc

    .line 181
    iget-object v0, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-virtual {v0}, Landroid/widget/LGETimePicker;->requestFocus()Z

    .line 182
    iget-object v0, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$200(Landroid/widget/LGETimePicker;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 185
    iget-object v0, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$000(Landroid/widget/LGETimePicker;)I

    move-result v0

    if-ge v0, v1, :cond_1c

    .line 186
    iget-object v0, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0, v1}, Landroid/widget/LGETimePicker;->access$012(Landroid/widget/LGETimePicker;I)I

    .line 195
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    iget-object v1, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v1}, Landroid/widget/LGETimePicker;->access$200(Landroid/widget/LGETimePicker;)Z

    move-result v1

    if-nez v1, :cond_55

    const/4 v1, 0x1

    :goto_27
    invoke-static {v0, v1}, Landroid/widget/LGETimePicker;->access$202(Landroid/widget/LGETimePicker;Z)Z

    .line 196
    iget-object v0, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$800(Landroid/widget/LGETimePicker;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v1}, Landroid/widget/LGETimePicker;->access$200(Landroid/widget/LGETimePicker;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v1}, Landroid/widget/LGETimePicker;->access$600(Landroid/widget/LGETimePicker;)Ljava/lang/String;

    move-result-object v1

    :goto_3e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$300(Landroid/widget/LGETimePicker;)V

    .line 198
    return-void

    .line 191
    :cond_47
    iget-object v0, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$000(Landroid/widget/LGETimePicker;)I

    move-result v0

    if-lt v0, v1, :cond_1c

    .line 192
    iget-object v0, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0, v1}, Landroid/widget/LGETimePicker;->access$020(Landroid/widget/LGETimePicker;I)I

    goto :goto_1c

    .line 195
    :cond_55
    const/4 v1, 0x0

    goto :goto_27

    .line 196
    :cond_57
    iget-object v1, p0, Landroid/widget/LGETimePicker$5;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v1}, Landroid/widget/LGETimePicker;->access$700(Landroid/widget/LGETimePicker;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e
.end method
