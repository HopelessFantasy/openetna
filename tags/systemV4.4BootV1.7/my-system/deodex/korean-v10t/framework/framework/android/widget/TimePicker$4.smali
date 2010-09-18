.class Landroid/widget/TimePicker$4;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0xc

    .line 164
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->requestFocus()Z

    .line 165
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 168
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)I

    move-result v0

    if-ge v0, v1, :cond_1c

    .line 169
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$012(Landroid/widget/TimePicker;I)I

    .line 178
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v1

    if-nez v1, :cond_55

    const/4 v1, 0x1

    :goto_27
    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$202(Landroid/widget/TimePicker;Z)Z

    .line 179
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    :goto_3e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)V

    .line 181
    return-void

    .line 174
    :cond_47
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)I

    move-result v0

    if-lt v0, v1, :cond_1c

    .line 175
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$020(Landroid/widget/TimePicker;I)I

    goto :goto_1c

    .line 178
    :cond_55
    const/4 v1, 0x0

    goto :goto_27

    .line 179
    :cond_57
    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e
.end method
