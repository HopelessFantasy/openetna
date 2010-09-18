.class Lcom/lge/sns/setting/ui/UpdateIntervalView$7;
.super Ljava/lang/Object;
.source "UpdateIntervalView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/setting/ui/UpdateIntervalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;


# direct methods
.method constructor <init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pad(I)Ljava/lang/Object;
    .registers 4
    .parameter "hour"

    .prologue
    .line 338
    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    .line 339
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private updateDisplay()V
    .registers 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->to_time:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toHour:I

    invoke-direct {p0, v2}, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->pad(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMinute:I

    invoke-direct {p0, v2}, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->pad(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v2, v2, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMeridian:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 7
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/16 v0, 0xc

    .line 318
    if-lt p2, v0, :cond_20

    .line 319
    sub-int v0, p2, v0

    sput v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toHour:I

    .line 320
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toFlag:Z

    .line 321
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const v2, 0x7f050063

    invoke-virtual {v1, v2}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMeridian:Ljava/lang/String;

    .line 327
    :goto_1a
    sput p3, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMinute:I

    .line 328
    invoke-direct {p0}, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->updateDisplay()V

    .line 329
    return-void

    .line 323
    :cond_20
    sput p2, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toHour:I

    .line 324
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toFlag:Z

    .line 325
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const v2, 0x7f050062

    invoke-virtual {v1, v2}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMeridian:Ljava/lang/String;

    goto :goto_1a
.end method
