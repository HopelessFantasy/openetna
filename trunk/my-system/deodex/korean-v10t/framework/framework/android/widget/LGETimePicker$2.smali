.class Landroid/widget/LGETimePicker$2;
.super Ljava/lang/Object;
.source "LGETimePicker.java"

# interfaces
.implements Lcom/android/internal/widget/NumberPicker$OnChangedListener;


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
    .line 114
    iput-object p1, p0, Landroid/widget/LGETimePicker$2;->this$0:Landroid/widget/LGETimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/internal/widget/NumberPicker;II)V
    .registers 7
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/16 v2, 0xc

    .line 115
    iget-object v0, p0, Landroid/widget/LGETimePicker$2;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0, p3}, Landroid/widget/LGETimePicker;->access$002(Landroid/widget/LGETimePicker;I)I

    .line 116
    iget-object v0, p0, Landroid/widget/LGETimePicker$2;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$100(Landroid/widget/LGETimePicker;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 119
    iget-object v0, p0, Landroid/widget/LGETimePicker$2;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$000(Landroid/widget/LGETimePicker;)I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 120
    iget-object v0, p0, Landroid/widget/LGETimePicker$2;->this$0:Landroid/widget/LGETimePicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/LGETimePicker;->access$002(Landroid/widget/LGETimePicker;I)I

    .line 122
    :cond_21
    iget-object v0, p0, Landroid/widget/LGETimePicker$2;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$200(Landroid/widget/LGETimePicker;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 124
    iget-object v0, p0, Landroid/widget/LGETimePicker$2;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0, v2}, Landroid/widget/LGETimePicker;->access$012(Landroid/widget/LGETimePicker;I)I

    .line 127
    :cond_2e
    iget-object v0, p0, Landroid/widget/LGETimePicker$2;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$300(Landroid/widget/LGETimePicker;)V

    .line 128
    return-void
.end method
