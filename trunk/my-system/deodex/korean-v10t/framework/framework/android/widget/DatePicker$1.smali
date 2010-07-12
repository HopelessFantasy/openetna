.class Landroid/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/android/internal/widget/NumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/internal/widget/NumberPicker;II)V
    .registers 9
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    invoke-static {v0, p3}, Landroid/widget/DatePicker;->access$002(Landroid/widget/DatePicker;I)I

    .line 97
    iget-object v0, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    invoke-static {v0}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Landroid/widget/DatePicker$OnDateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 98
    iget-object v0, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    invoke-static {v0}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Landroid/widget/DatePicker$OnDateChangedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    iget-object v2, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    invoke-static {v2}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    invoke-static {v3}, Landroid/widget/DatePicker;->access$300(Landroid/widget/DatePicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    invoke-static {v4}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 100
    :cond_2a
    return-void
.end method
