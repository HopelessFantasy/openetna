.class Landroid/widget/LGETimePicker$3;
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
    .line 137
    iput-object p1, p0, Landroid/widget/LGETimePicker$3;->this$0:Landroid/widget/LGETimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/internal/widget/NumberPicker;II)V
    .registers 5
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/widget/LGETimePicker$3;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0, p3}, Landroid/widget/LGETimePicker;->access$402(Landroid/widget/LGETimePicker;I)I

    .line 139
    iget-object v0, p0, Landroid/widget/LGETimePicker$3;->this$0:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Landroid/widget/LGETimePicker;->access$300(Landroid/widget/LGETimePicker;)V

    .line 140
    return-void
.end method
