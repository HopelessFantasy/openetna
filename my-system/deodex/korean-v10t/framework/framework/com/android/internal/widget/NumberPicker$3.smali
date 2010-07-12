.class Lcom/android/internal/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 149
    iput-object p1, p0, Lcom/android/internal/widget/NumberPicker$3;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$3;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v0}, Lcom/android/internal/widget/NumberPicker;->access$800(Lcom/android/internal/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/NumberPicker;->maxDigitsAllowed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_25

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$3;->this$0:Lcom/android/internal/widget/NumberPicker;

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker$3;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v1}, Lcom/android/internal/widget/NumberPicker;->access$800(Lcom/android/internal/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/NumberPicker;->access$902(Lcom/android/internal/widget/NumberPicker;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    :cond_25
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$3;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v0}, Lcom/android/internal/widget/NumberPicker;->access$800(Lcom/android/internal/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/NumberPicker;->maxDigitsAllowed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_21

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker$3;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v0}, Lcom/android/internal/widget/NumberPicker;->access$800(Lcom/android/internal/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker$3;->this$0:Lcom/android/internal/widget/NumberPicker;

    invoke-static {v1}, Lcom/android/internal/widget/NumberPicker;->access$900(Lcom/android/internal/widget/NumberPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_21
    return-void
.end method
