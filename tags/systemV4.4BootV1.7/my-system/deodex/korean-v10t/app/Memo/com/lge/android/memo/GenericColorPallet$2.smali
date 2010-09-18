.class Lcom/lge/android/memo/GenericColorPallet$2;
.super Ljava/lang/Object;
.source "GenericColorPallet.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/memo/GenericColorPallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/memo/GenericColorPallet;


# direct methods
.method constructor <init>(Lcom/lge/android/memo/GenericColorPallet;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lge/android/memo/GenericColorPallet$2;->this$0:Lcom/lge/android/memo/GenericColorPallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/android/memo/GenericColorPallet$2;->this$0:Lcom/lge/android/memo/GenericColorPallet;

    invoke-static {v0}, Lcom/lge/android/memo/GenericColorPallet;->access$000(Lcom/lge/android/memo/GenericColorPallet;)I

    move-result v0

    sput v0, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    .line 193
    iget-object v0, p0, Lcom/lge/android/memo/GenericColorPallet$2;->this$0:Lcom/lge/android/memo/GenericColorPallet;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lge/android/memo/GenericColorPallet;->access$102(Lcom/lge/android/memo/GenericColorPallet;I)I

    .line 194
    iget-object v0, p0, Lcom/lge/android/memo/GenericColorPallet$2;->this$0:Lcom/lge/android/memo/GenericColorPallet;

    iget-object v1, p0, Lcom/lge/android/memo/GenericColorPallet$2;->this$0:Lcom/lge/android/memo/GenericColorPallet;

    invoke-static {v1}, Lcom/lge/android/memo/GenericColorPallet;->access$200(Lcom/lge/android/memo/GenericColorPallet;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/GenericColorPallet;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/android/memo/GenericColorPallet$2;->this$0:Lcom/lge/android/memo/GenericColorPallet;

    invoke-static {v2}, Lcom/lge/android/memo/GenericColorPallet;->access$000(Lcom/lge/android/memo/GenericColorPallet;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ON KEY OF BOX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    return v0
.end method
